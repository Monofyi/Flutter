import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventory_management/ui/components/input_field.dart';
import 'package:inventory_management/ui/login_page/login_page.dart';
import 'package:inventory_management/ui/login_page/new_signup.dart';
import 'package:inventory_management/ui/sign_in/controller.dart';
import 'package:inventory_management/ui/sign_in/sign_in.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  static const routeName = '/firstScreen';

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff32C5FF),
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff252525),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.45,
                  ),
                  Text(
                    "Bitecope",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Color(0xfff5f5f5),
                      fontSize: 36,
                      letterSpacing: 2.34,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Connecting every bit",
                    style: TextStyle(
                      color: Color(0xfff5f5f5),
                      fontSize: 17,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.85,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SignInPage.routeName);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 311.41,
                      height: 54.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34.60),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff2cceff),
                            Color(0xff30aaff),
                            Color(0xff30aaff),
                            Color(0xff30aaff),
                            Color(0xff30abff),
                            Color(0xff30adff),
                            Color(0xff30b4ff),
                            Color(0xff31b8ff),
                            Color(0xff32c2ff),
                            Color(0xff32c5ff),
                            Color(0xff32c9ff),
                            Color(0xff32ccff),
                            Color(0xff32ceff),
                            Color(0xff32ceff),
                            Color(0xff33cfff)
                          ],
                        ),
                      ),
                      child: Text(
                        "Sign IN ",
                        style: TextStyle(
                          color: Color(0xff252525),
                          fontSize: 26,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, NewSignUp.routeName);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 311.41,
                      height: 54.35,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Color(0xff32C5FF),
                            width: 3,
                          ),
                          left: BorderSide(
                            color: Color(0xff32C5FF),
                            width: 3,
                          ),
                          bottom: BorderSide(
                            color: Color(0xff32C5FF),
                            width: 3,
                          ),
                          top: BorderSide(
                            color: Color(0xff32C5FF),
                            width: 3,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(34.60),
                        color: Color(0xff252525),
                      ),
                      child: Text(
                        "Sign UP",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomPaint(
              child: Container(
                height: 300.0,
              ),
              painter: CurvePainter(),
            ),
          ],
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.lineTo(0, size.height - 100);

    path.quadraticBezierTo(size.width * 0.20, size.height * 0.90,
        size.width * 0.32, size.height * 0.50);

    path.quadraticBezierTo(size.width * 0.42, size.height * 0.20,
        size.width * 0.70, size.height * 0.45);

    path.quadraticBezierTo(
        size.width * 0.90, size.height * 0.60, size.width, size.height * 0.35);

    path.lineTo(size.width, 0);

    path.close();
    paint.color = Color(0xff32C5FF);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
