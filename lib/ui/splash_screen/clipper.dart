import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inventory_management/ui/splash_screen/home.dart';

class Clipper extends StatefulWidget {
  const Clipper({Key key}) : super(key: key);

  @override
  _ClipperState createState() => _ClipperState();
}

class _ClipperState extends State<Clipper> {
  @override
  void initState() {
    loadWidget();
    super.initState();
  }

  Future<Timer> loadWidget() async {
    const _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacement(MaterialPageRoute<void>(
        builder: (BuildContext context) => const Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
                        ]))),
              ),
            ],
          ),
          const Spacer(),
          Container(
            child: Image.asset('assests/image.png'),
          ),
          const Text(
            'Bitecope',
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            'Connecting every bit',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipPath(
                clipper: MyCustomClipperBottom(),
                child: Container(
                    height: 260,
                    width: 280,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
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
                        ]))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyCustomClipperBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // var controlPoint = Offset(size.width, (size.height) / 10);
    // var endPoint = Offset(0, 30);

    final path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width - 30, size.height)
      // ..quadraticBezierTo(
      //     controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
      ..arcToPoint(const Offset(0, 0),
          radius: const Radius.circular(240), clockwise: false);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class MyCustomClipperTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // var controlPoint = Offset(size.width, (size.height) / 10);
    // var endPoint = Offset(0, 30);

    final path = Path()
      ..moveTo(90, 0)
      ..arcToPoint(Offset(size.width, size.height - 90),
          radius: const Radius.circular(150), clockwise: false)
      // ..lineTo(0, size.height)
      // ..lineTo(size.width, size.height)
      // ..quadraticBezierTo(
      //     controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
