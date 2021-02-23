import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inventory_management/ui/login_page/login_page.dart';

class SignInPage extends StatefulWidget {
  static const routeName = '/signinPage';
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInInformation extends StatelessWidget {
  const _SignInInformation({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32, right: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _BuildInputField(
            label: 'UserName',
            icon: Icon(Icons.person),
          ),
          _BuildInputField(
            label: 'password',
            icon: Icon(Icons.remove_red_eye),
          ),
        ],
      ),
    );
  }
}

class _BuildInputField extends StatelessWidget {
  const _BuildInputField({Key key, @required this.label, @required this.icon})
      : super(key: key);
  final String label;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {},
      decoration: InputDecoration(prefixIcon: icon, labelText: label),
    );
  }
}

class _SignInPageState extends State<SignInPage> {
  bool animate = false;
  void initState() {
    super.initState();

    Future.delayed(Duration(milliseconds: 500)).then((value) => setState(() {
          animate = true;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        backgroundColor: Color(0xfff2f3f7),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topRight,
                  radius: 1.5,
                  colors: <Color>[
                    Color(0xff33CEFF),
                    Color(0xff30AAFF),
                  ],
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width * 0.36,
                child: SvgPicture.asset(
                  'images/analytics.svg',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: _NextButtonAndAgreement(),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              bottom: animate ? 96 * 2.0 : -56 * 8.0,
              left: 16,
              right: 16,
              child: Container(
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 9,
                        blurRadius: 8,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height * 0.26,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: _SignInInformation()),
            ),
          ],
        ),
      ),
    );
  }
}

class _NextButtonAndAgreement extends StatelessWidget {
  const _NextButtonAndAgreement({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              gradient: RadialGradient(
                center: Alignment.topRight,
                radius: 1.5,
                colors: <Color>[
                  Color(0xff33CEFF),
                  Color(0xff30AAFF),
                ],
              ),
            ),
            child: Center(
              child: Text(
                'Sign In',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          _BottomTextBox(),
        ],
      ),
    );
  }
}

class _BottomTextBox extends StatelessWidget {
  const _BottomTextBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RichText(
          text: TextSpan(
              text: 'Dont have an account? ',
              style: TextStyle(color: Colors.black, fontSize: 20),
              children: <TextSpan>[
                TextSpan(
                  text: 'Sign up',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushNamed(context, SignUpPage.routeName);
                    },
                  style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                )
              ]),
        ),
      ],
    );
  }
}
