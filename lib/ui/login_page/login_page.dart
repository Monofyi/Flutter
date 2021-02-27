import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventory_management/ui/login_page/controller/login_page_controller.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  static const routeName = '/loginPage';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) =>
              LoginPageController(accountRepository: context.read()),
        )
      ],
      child: SignUpPage(),
    );
  }

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _BuildInputField extends StatelessWidget {
  const _BuildInputField({
    Key key,
    @required this.label,
    @required this.icon,
    @required this.onChanged,
  }) : super(key: key);
  final String label;
  final Widget icon;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(prefixIcon: icon, labelText: label),
    );
  }
}

class _SignUpPageState extends State<SignUpPage> {
  String _userName;
  String _emailId;
  String _password;
  String _contactNumber;

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
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
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
                onTap: () {
                  context.read<LoginPageController>().login(
                      userName: _userName,
                      email: _emailId,
                      contactNumber: _contactNumber,
                      password: _password);
                },
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              bottom: animate ? 56 * 2.0 : -56 * 8.0,
              left: 16,
              right: 16,
              child: Container(
                  margin:const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 9,
                        blurRadius: 8,
                        offset:const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.56,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        _BuildInputField(
                          label: 'Company Name',
                          icon: const Icon(Icons.work),
                          onChanged: (value) {},
                        ),
                        _BuildInputField(
                            label: 'Email',
                            icon:const Icon(Icons.email),
                            onChanged: (value) {
                              _emailId = value;
                            }),
                        _BuildInputField(
                            label: 'UserName',
                            icon:const Icon(Icons.person),
                            onChanged: (value) {
                              _userName = value;
                            }),
                        _BuildInputField(
                            label: 'phoneNumber',
                            icon:const Icon(Icons.phone),
                            onChanged: (value) {
                              _contactNumber = value;
                            }),
                        _BuildInputField(
                            label: 'password',
                            icon: const Icon(Icons.remove_red_eye),
                            onChanged: (value) {
                              _password = value;
                            }),
                      ],
                    ),
                  )),
            ),
          ],
        ),
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
                gradient:const RadialGradient(
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
