import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:inventory_management/ui/components/error_pop_up.dart';
import 'package:provider/provider.dart';

import 'controller/login_page_controller.dart';

enum UserType {
  worker,
  owner,
}

class NewSignUpTwo extends StatefulWidget {
  LoginPageController controller;

  NewSignUpTwo({this.controller});
  static const routeName = '/newSignUpTwo';

  // static Widget wrapped() {
  //   return MultiProvider(
  //     providers: [
  //       ChangeNotifierProvider<LoginPageController>(
  //         lazy: false,
  //         create: (context) => LoginPageController(
  //             onError: (val) async {
  //               print('kkk');
  //               print(val);
  //               await ErrorDialog.show(
  //                 context,
  //                 onTap: () {},
  //                 list: val,
  //               );
  //             },
  //             accountRepository: context.read(),
  //             appNavigator: context.read()),
  //       )
  //     ],
  //     child: NewSignUpTwo(),
  //   );
  // }

  @override
  _NewSignUpTwoState createState() => _NewSignUpTwoState();
}

class _NewSignUpTwoState extends State<NewSignUpTwo> {
  int val = -1;
  bool terms = false;
  String _chosenValue;
  List<String> _questions = [
    'What primary school did you attend?',
    'In what town or city did your parents meet?',
    'What time of the day was your first child born?',
    'What was the house number and street name you lived in as a child?',
    'What were the last four digits of your childhood telephone number?',
  ];
  @override
  Widget build(BuildContext context) {
    //final controller = context.watch<LoginPageController>();
    final controller = widget.controller;
    final vm = controller.value;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff252525),
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xff32C5FF),
        ),
        centerTitle: false,
        title: const Text(
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
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 60,
                      padding: const EdgeInsets.only(top: 30),
                      child: DropdownButton<String>(
                        underline: Container(
                          height: 3,
                          color: Color(0xff9a9a9a),
                        ),
                        //dropdownColor: Colors.red,
                        // icon: Row(
                        //   mainAxisAlignment: MainAxisAlignment.end,
                        //   children: <Widget>[Icon(Icons.arrow_forward_ios)],
                        // ),

                        isExpanded: true,
                        elevation: 0,
                        value: _chosenValue,
                        //elevation: 5,
                        style: TextStyle(color: Colors.black),
                        key: UniqueKey(),
                        items: _questions.map<DropdownMenuItem<String>>(
                          (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          },
                        ).toList(),
                        hint: Text(
                          "Please choose a recovery question",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        onChanged: (String value) {
                          setState(
                            () {
                              controller.recoveryQuestionChanged(value);
                              _chosenValue = value;
                            },
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 20, bottom: 20),
                      child: TextFormField(
                        validator: controller.validationMessageRecoveryAnswer,
                        decoration: InputDecoration(
                          //helperText: 'dc',
                          labelText: 'Recovery Answer',
                          labelStyle: TextStyle(
                            color: Color(0xff252525),
                            fontSize: 15,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.26,
                          ),
                          // suffixIcon: Icon(
                          //   Icons.person,
                          //   color: Colors.black,
                          // ),
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
                          hintText: 'XYZ School',
                          hintStyle: TextStyle(
                            color: Color(0xff9a9a9a),
                            fontSize: 17,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.85,
                          ),
                        ),
                        keyboardType: TextInputType.name,
                        onChanged: controller.recoveryAnswerChanged,
                      ),
                    ),
                    Theme(
                      data: ThemeData(unselectedWidgetColor: Colors.black),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 20, bottom: 10),
                            child: Text(
                              "User Type",
                              style: TextStyle(
                                color: Color(0xff252525),
                                fontSize: 17,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.34,
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text("Owner"),
                            leading: Radio(
                              focusColor: Colors.red,
                              hoverColor: Colors.green,
                              value: 1,
                              groupValue: val,
                              onChanged: (int value) {
                                setState(() {
                                  val = value;
                                  controller.userTypeChanged(0);
                                });
                              },
                              activeColor: Color(0xff32C5FF),
                            ),
                          ),
                          ListTile(
                            title: Text("Worker"),
                            leading: Radio(
                              value: 2,
                              groupValue: val,
                              onChanged: (int value) {
                                setState(() {
                                  val = value;
                                  controller.userTypeChanged(1);
                                });
                              },
                              activeColor: Color(0xff32C5FF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: CheckboxListTile(
                              activeColor: Color(0xff32C5FF),
                              //  selectedTileColor: Colors.red,
                              value: terms,
                              onChanged: (bool) {
                                setState(
                                  () {
                                    terms = !terms;
                                  },
                                );
                              },
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                  children: <TextSpan>[
                                    TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {},
                                      text: 'I agree to the ',
                                    ),
                                    TextSpan(
                                      text: 'T&C ',
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {},
                                      style: TextStyle(
                                          color: Color(0xff32C5FF),
                                          decoration: TextDecoration.underline),
                                    ),
                                    TextSpan(
                                      text: 'and ',
                                    ),
                                    TextSpan(
                                      text: 'Privacy Policy',
                                      style: TextStyle(
                                          color: Color(0xff32C5FF),
                                          decoration: TextDecoration.underline),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: vm.valid ? controller.login : null,
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
                          "Signup",
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
