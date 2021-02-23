import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/loginPage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginInformation extends StatelessWidget {
  const _LoginInformation({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _BuildInputField(
            label: 'Company Name',
            icon: Icon(Icons.work),
          ),
          _BuildInputField(
            label: 'Email',
            icon: Icon(Icons.email),
          ),
          _BuildInputField(
            label: 'UserName',
            icon: Icon(Icons.person),
          ),
          _BuildInputField(
            label: 'phoneNumber',
            icon: Icon(Icons.phone),
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

class _LoginPageState extends State<LoginPage> {
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
        resizeToAvoidBottomPadding: false,
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
              duration: Duration(seconds: 2),
              bottom: animate ? 56 * 2.0 : -56 * 8.0,
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
                  height: MediaQuery.of(context).size.height * 0.56,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: _LoginInformation()),
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
          _BottomCheckBox(),
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
                'Sign Up',
                style: TextStyle(color: Colors.white, fontSize: 24),
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
        Text(
          'I agree to the T&C and Privacy Policy',
        ),
      ],
    );
  }
}
