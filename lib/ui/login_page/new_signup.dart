import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inventory_management/ui/components/error_pop_up.dart';
import 'package:provider/provider.dart';

import 'controller/login_page_controller.dart';
import 'new_signup_two.dart';

class NewSignUp extends StatefulWidget {
  static const routeName = '/newSignUp';

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginPageController>(
          lazy: false,
          create: (context) => LoginPageController(
              onError: (val) async {
                print('kkk');
                print(val);
                await ErrorDialog.show(
                  context,
                  onTap: () {},
                  list: val,
                );
              },
              accountRepository: context.read(),
              appNavigator: context.read()),
        )
      ],
      child: NewSignUp(),
    );
  }

  @override
  _NewSignUpState createState() => _NewSignUpState();
}

class _NewSignUpState extends State<NewSignUp> {
  static final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<LoginPageController>();
    final vm = controller.value;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff32C5FF),
        ),
        centerTitle: false,
        title: Text(
          "Signup",
          style: TextStyle(
            color: Color(0xff32C5FF),
            fontSize: 26,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            letterSpacing: 1.08,
          ),
        ),
      ),
      body: Container(
        color: Color(0xff252525),
      ),
      bottomSheet: SingleChildScrollView(
        child: BottomSheet(
          backgroundColor: Color(0xff252525),
          elevation: 0,
          enableDrag: false,
          onClosing: () {},
          builder: (context) => Container(
            height: 720,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 30, bottom: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          //helperText: 'dc',
                          labelText: 'Email',
                          labelStyle: TextStyle(
                            color: Color(0xff252525),
                            fontSize: 15,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.26,
                          ),
                          suffixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                          ),
                          //hoverColor: Colors.red,
                          //fillColor: Colors.red,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xff9a9a9a),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xff32C5FF),
                            ),
                          ),
                          // border: UnderlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Color(0xff9a9a9a),
                          //   ),
                          // ),
                          //focusColor: Colors.red,
                          hintText: 'test@email.com',
                          hintStyle: TextStyle(
                            color: Color(0xff9a9a9a),
                            fontSize: 17,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.85,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        onChanged: controller.emailChanged,
                        validator: controller.validationMessageEmail,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          //helperText: 'dc',
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: Color(0xff252525),
                            fontSize: 15,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.26,
                          ),
                          suffixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          //hoverColor: Colors.red,
                          //fillColor: Colors.red,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xff9a9a9a),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xff32C5FF),
                            ),
                          ),
                          // border: UnderlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Color(0xff9a9a9a),
                          //   ),
                          // ),
                          //focusColor: Colors.red,
                          hintText: 'test',
                          hintStyle: TextStyle(
                            color: Color(0xff9a9a9a),
                            fontSize: 17,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.85,
                          ),
                        ),
                        keyboardType: TextInputType.name,
                        onChanged: controller.usernameChanged,
                        validator: controller.validationMessageUserName,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          //helperText: 'dc',
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                            color: Color(0xff252525),
                            fontSize: 15,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.26,
                          ),
                          suffixIcon: Icon(
                            Icons.local_phone_outlined,
                            color: Colors.black,
                          ),
                          //hoverColor: Colors.red,
                          //fillColor: Colors.red,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xff9a9a9a),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xff32C5FF),
                            ),
                          ),
                          // border: UnderlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Color(0xff9a9a9a),
                          //   ),
                          // ),
                          //focusColor: Colors.red,
                          hintText: '9876543210',
                          hintStyle: TextStyle(
                            color: Color(0xff9a9a9a),
                            fontSize: 17,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.85,
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                        onChanged: controller.phoneNumberChanged,
                        validator: controller.validationMessageContactNumber,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          //helperText: 'dc',
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Color(0xff252525),
                            fontSize: 15,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.26,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.black,
                          ),
                          //hoverColor: Colors.red,
                          //fillColor: Colors.red,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xff9a9a9a),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xff32C5FF),
                            ),
                          ),
                          // border: UnderlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Color(0xff9a9a9a),
                          //   ),
                          // ),
                          //focusColor: Colors.red,
                          hintText: '*************',
                          hintStyle: TextStyle(
                            color: Color(0xff9a9a9a),
                            fontSize: 17,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.85,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        onChanged: controller.passwordChanged,
                        validator: controller.validationMessagePassword,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          //helperText: 'dc',
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(
                            color: Color(0xff252525),
                            fontSize: 15,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.26,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: Colors.black,
                          ),
                          //hoverColor: Colors.red,
                          //fillColor: Colors.red,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xff9a9a9a),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Color(0xff32C5FF),
                            ),
                          ),
                          // border: UnderlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Color(0xff9a9a9a),
                          //   ),
                          // ),
                          //focusColor: Colors.red,
                          hintText: '***************',
                          hintStyle: TextStyle(
                            color: Color(0xff9a9a9a),
                            fontSize: 17,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.85,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        onChanged: controller.confirmPasswordChanged,
                        validator: controller.validationMessageContactNumber,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => NewSignUpTwo(
                              controller: controller,
                            ),
                          ),
                        );
                      },
                      // Navigator.pushNamed(context, NewSignUpTwo.routeName,
                      //     arguments: controller);

                      child: Container(
                        alignment: Alignment.center,
                        width: 257.22,
                        height: 55.20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 20,
                              offset: Offset(-2, 5),
                            ),
                          ],
                          color: Color(0xff252525),
                        ),
                        padding: const EdgeInsets.only(
                          top: 7,
                          bottom: 8,
                        ),
                        child: Text(
                          "Next",
                          style: TextStyle(
                            color: Color(0xff32C5FF),
                            fontSize: 27,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.81,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
