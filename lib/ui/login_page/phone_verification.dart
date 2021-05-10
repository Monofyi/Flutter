import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inventory_management/ui/login_page/login_page.dart';
import 'package:inventory_management/ui/sign_in/controller.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:provider/provider.dart';

class PhonevrificationScreen extends StatefulWidget {
  static const routeName = '/PhonevrificationScreen';
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SignInController(
            context.read(),
            context.read(),
          ),
        ),
      ],
      child: PhonevrificationScreen(),
    );
  }

  @override
  PhonevrificationScreenState createState() => PhonevrificationScreenState();
}

class PhonevrificationScreenState extends State<PhonevrificationScreen> {
  bool animate = false;
  bool radiobutton = true;

  @override
  void initState() {
    super.initState();

    Future<dynamic>.delayed(const Duration(milliseconds: 500)).then(
          (dynamic e) =>
          setState(
                () {
              animate = true;
            },
          ),
    );

  }
  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(



        resizeToAvoidBottomInset: false,
        backgroundColor:const Color(0xFFD6D6D6),
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Container(
                decoration: const BoxDecoration(

                ),
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.52,
                width: MediaQuery.of(context).size.width * 0.66,
                child: SvgPicture.asset(
                  'images/Illustration 3Illustrations.svg',
                ),
              ),
            ),
            Positioned(top: 320,left: 40,
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Center(child: Text("Please verify your account using "
                      "one of the below options",style: GoogleFonts.aBeeZee(fontSize: 18),)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:radiobutton==true ?_BottomSheetEmail(onTap: () {  },):_BottomSheetPhn(onTap: () {  },)

              ),

            Positioned(top: 410,left: 20,
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 200),
                      bottom: animate ? MediaQuery.of(context).size.height / 3.3 : -56 * 8.0,
                      left: 16,
                      right: 16,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            // ignore: unnecessary_statements
                            radiobutton==false;
                          });

                        },
                        child: Container(
                          margin: const EdgeInsets.all(6),

                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context).viewInsets.bottom /3.5),
                              child: Padding(
                                padding: const EdgeInsets.all(18),
                                child: Row(children: [
                                  if (radiobutton==false) const Icon(Icons.radio_button_on,color: Colors.lightBlue,) else const Icon(Icons.radio_button_off,color: Colors.grey,),


                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:14),
                                    child:  Text("Phone",style: GoogleFonts.aBeeZee(fontWeight:FontWeight.bold,fontSize: 16),)
                                    ,
                                  ),
                                ],),
                              )
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 200),
                      bottom:
                      animate ? MediaQuery.of(context).size.height /3.3 : -56 * 8.0,
                      left: 16,
                      right: 16,
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            // ignore: unnecessary_statements
                            radiobutton==true;
                          });

                        },
                        child: Container(
                          margin: const EdgeInsets.all(6),

                          height: MediaQuery.of(context).size.height * 0.09,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(context).viewInsets.bottom / 4),
                              child:  Padding(
                                padding: const EdgeInsets.all(18),
                                child: Row(children: [
                                  radiobutton==true?const Icon(Icons.radio_button_on,color: Colors.lightBlue,):const Icon(Icons.radio_button_off,color: Colors.grey,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:14),

                                    child:  Text("Email",style: GoogleFonts.aBeeZee(fontWeight:FontWeight.bold,fontSize: 16),)

                                  ),

                                ],),
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class _BottomSheetEmail extends StatelessWidget {
  const _BottomSheetEmail({
    Key key,
    @required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;
  Widget otpBoxBuilder(){
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue)
      ),
      child: const TextField(
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
            border: InputBorder.none
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 16),
      child:AnimatedPositioned(
        duration: const Duration(milliseconds: 200),
        bottom:  MediaQuery.of(context).size.height ,
        left: 16,
        right: 16,
        child:  Container(height: 280,
          width: MediaQuery.of(context).size.width,

          margin: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 9,
                blurRadius: 8,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.56,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child:Image.asset(
                    'images/email.png',
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.80,
                child: Center(child: Column(
                  children: [
                    Text("Enter the 5-digit verification code sent to",style: GoogleFonts.aBeeZee(fontSize: 13),),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text("bitecope@gmail.com",style: GoogleFonts.aBeeZee(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                    ),

                  ],
                )),
              ),
              const SizedBox(height: 2,),
        Center(
          child: OTPTextField(
            length: 5,
            width: MediaQuery.of(context).size.width,
           textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldWidth: 40,

            style: const TextStyle(
                fontSize: 17
            ),
            onChanged: (pin) {
              print('Changed: $pin');
            },
            onCompleted: (pin) {
              print('Completed: $pin');
            },
          ),
        ),

              const SizedBox(height: 5,),
              Row(
              //  mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, SignUpPage.routeName);
                        },
                        child: Container(
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
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
                              'Resend OTP',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, SignUpPage.routeName);
                        },
                        child: Container(
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
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
                              'Proceed',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // const _BottomTextBox(),
                ],
              ),
            ],
          ),




        ),),



    );
  }
}
class _BottomSheetPhn extends StatelessWidget {
  const _BottomSheetPhn({
    Key key,
    @required this.onTap,
  }) : super(key: key);
  final VoidCallback onTap;
  Widget otpBoxBuilder(){
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue)
      ),
      child: const TextField(
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
            border: InputBorder.none
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 16),
      child:AnimatedPositioned(
        duration: const Duration(milliseconds: 200),
        bottom:  MediaQuery.of(context).size.height ,
        left: 16,
        right: 16,
        child:  Container(height: 280,
          width: MediaQuery.of(context).size.width,

          margin: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(topLeft:Radius.circular(30),topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 9,
                blurRadius: 8,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.56,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    'images/Illustration 5Illustrations.svg',
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.80,
                child: Center(child: Column(
                  children: [
                    Text("Enter the 5-digit verification code sent to",style: GoogleFonts.aBeeZee(fontSize: 13),),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text("+918885678923",style: GoogleFonts.aBeeZee(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                    ),

                  ],
                )),
              ),
              const SizedBox(height: 2,),
              Center(
                child: OTPTextField(
                  length: 5,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 40,

                  style: const TextStyle(
                      fontSize: 17
                  ),
                  onChanged: (pin) {
                    print("Changed: $pin");
                  },
                  onCompleted: (pin) {
                    print("Completed: $pin");
                  },
                ),
              ),

              const SizedBox(height: 5,),
              Row(
                //  mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, SignUpPage.routeName);
                        },
                        child: Container(
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
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
                              'Resend OTP',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, SignUpPage.routeName);
                        },
                        child: Container(
                          height: 36,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
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
                              'Proceed',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // const _BottomTextBox(),
                ],
              ),
            ],
          ),




        ),),



    );
  }
}


