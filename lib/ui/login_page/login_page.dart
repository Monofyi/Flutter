import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:inventory_management/ui/login_page/controller/login_page_controller.dart';
import 'package:provider/provider.dart';

import 'controller/login_model.dart';

class SignUpPage extends StatefulWidget {
  static const routeName = '/loginPage';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<LoginPageController, LoginModel>(
          lazy: false,
          create: (context) => LoginPageController(
              accountRepository: context.read(), appNavigator: context.read()),
        )
      ],
      child: SignUpPage(),
    );
  }

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  static final _formKey = GlobalKey<FormState>();
  bool animate = false;
  @override
  void initState() {
    super.initState();

    Future<int>.delayed(const Duration(milliseconds: 500))
        .then((_) => setState(() {
              animate = true;
            }));
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.select((LoginModel value) => value);
    final controller = context.watch<LoginPageController>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff2f3f7),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.topRight,
                radius: 1.5,
                colors: <Color>[
                  Color(0xff33CEFF),
                  Color(0xff30AAFF),
                ],
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.width * 0.36,
              child: SvgPicture.asset(
                'images/analytics.svg',
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _NextButtonAndAgreement(
              onTap: vm.valid ? controller.login : null,
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            bottom: animate ? 56 * 2.0 : -56 * 8.0,
            left: 16,
            right: 16,
            child: Container(
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 9,
                    blurRadius: 8,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom / 2),
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: CustomScrollView(
                      slivers: [
                        SliverList(
                          delegate: SliverChildListDelegate(
                            [
                              BuildInputField(
                                label: 'username',
                                icon: const Icon(Icons.person),
                                validator: controller.validationMessageUserName,
                                onChanged: controller.usernameChanged,
                              ),
                              BuildInputField(
                                  label: 'Email',
                                  icon: const Icon(Icons.email),
                                  onChanged: controller.emailChanged,
                                  validator: controller.validationMessageEmail),
                              BuildInputField(
                                label: 'phoneNumber',
                                type: TextInputType.number,
                                icon: const Icon(Icons.phone),
                                onChanged: controller.phoneNumberChanged,
                                validator:
                                    controller.validationMessageContactNumber,
                              ),
                              BuildInputField(
                                  label: 'password',
                                  icon: const Icon(Icons.remove_red_eye),
                                  onChanged: controller.passwordChanged,
                                  validator:
                                      controller.validationMessagePassword),
                              BuildInputField(
                                label: 'confirm password',
                                icon: const Icon(Icons.remove_red_eye),
                                onChanged: controller.confirmPasswordChanged,
                                validator:
                                    controller.validationMessageConfirmPassword,
                              ),
                              BuildInputField(
                                label: 'recovery_question',
                                icon: const Icon(Icons.remove_red_eye),
                                onChanged: controller.recoveryQuestionChanged,
                                validator: controller
                                    .validationMessageRecoveryQuestion,
                              ),
                              BuildInputField(
                                label: 'recovery_answer',
                                icon: const Icon(Icons.remove_red_eye),
                                onChanged: controller.recoveryAnswerChanged,
                                validator:
                                    controller.validationMessageRecoveryAnswer,
                              ),
                              BuildInputField(
                                label: 'user_type',
                                icon: const Icon(Icons.supervised_user_circle),
                                onChanged: controller.userTypeChanged,
                                validator: controller.validationMessageUserType,
                              ),
                            ],
                          ),
                        ),
                        const SliverPadding(
                          padding: EdgeInsets.all(
                            16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NextButtonAndAgreement extends StatelessWidget {
  const _NextButtonAndAgreement({Key key, @required this.onTap})
      : super(key: key);
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const _BottomCheckBox(),
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: const RadialGradient(
                  center: Alignment.topRight,
                  radius: 1.5,
                  colors: <Color>[
                    Color(0xff33CEFF),
                    Color(0xff30AAFF),
                  ],
                ),
              ),
              child: const Center(
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomCheckBox extends StatelessWidget {
  const _BottomCheckBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Checkbox(
          activeColor: Theme.of(context).accentColor,
          value: false,
          onChanged: (bool value) {},
        ),
        const Text(
          'I agree to the T&C and Privacy Policy',
        ),
      ],
    );
  }
}
