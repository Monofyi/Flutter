import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipPath(
                clipper: MyCustomClipperTop(),
                child: Container(
                  height: 260,
                  width: 280,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      // stops: [
                      //   0.39,
                      //   0.4,
                      // ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xff2CCEFF),
                        Color(0xff30AAFF),
                        Color(0xff30ABFF),
                        Color(0xff30ACFF),
                        Color(0xff30ADFF),
                        Color(0xff31B5FF),
                        Color(0xff31B9FF),
                        Color(0xff32C3FF),
                        Color(0xff32C6FF),
                        Color(0xff33C9FF),
                        Color(0xff33CDFF),
                        Color(0xff33CEFF),
                        Color(0xff33CFFF),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            child: Image.asset('assests/image.png'),
          ),
          Text(
            'Bitecope',
            style: TextStyle(
                color: Colors.blue[300],
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Connecting every bit',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  // stops: [
                  //   0.39,
                  //   0.4,
                  // ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff2CCEFF),
                    Color(0xff30AAFF),
                    Color(0xff30ABFF),
                    Color(0xff30ACFF),
                    Color(0xff30ADFF),
                    Color(0xff31B5FF),
                    Color(0xff31B9FF),
                    Color(0xff32C3FF),
                    Color(0xff32C6FF),
                    Color(0xff33C9FF),
                    Color(0xff33CDFF),
                    Color(0xff33CEFF),
                    Color(0xff33CFFF),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    height: 3,
                    width: 120,
                    color: Colors.white,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: Text(
                    "Welcome,",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "Please Signin/Signup to use \nBitecope Services",
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 25),
                    width: 250,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        'Signin',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue[300]),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 25),
                    width: 250,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        'Signup',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.blue[300]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyCustomClipperTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // var controlPoint = Offset(size.width, (size.height) / 10);
    // var endPoint = Offset(0, 30);

    final path = Path()
      ..lineTo(0, size.height - 120)

      // ..lineTo(0, size.height)
      // ..lineTo(size.width, size.height)
      // ..quadraticBezierTo(
      //     controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
      ..arcToPoint(Offset(size.width - 140, 0),
          radius: const Radius.circular(100), clockwise: false)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
