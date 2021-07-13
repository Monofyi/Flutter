import 'package:flutter/material.dart';

class BuyersListConfirm extends StatefulWidget {
  const BuyersListConfirm({Key key}) : super(key: key);

  @override
  _BuyersListNewDesignState createState() => _BuyersListNewDesignState();
}

class _BuyersListNewDesignState extends State<BuyersListConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(child: Container()),
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(left: 30, right: 30),
                child: RichText(
                  text: TextSpan(
                    // Note: Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'You are trying to ',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: "Nunito",
                          //    fontWeight: FontWeight.w700,
                          letterSpacing: 0.34,
                        ),
                      ),
                      TextSpan(
                        text: 'add new buyer',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.34,
                        ),
                      ),
                      TextSpan(
                        text:
                            '. Please do confirm if it is what you want to do?',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: "Nunito",
                          //  fontWeight: FontWeight.w700,
                          letterSpacing: 0.34,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 350,
                height: 123,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      height: 123,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 37,
                            offset: Offset(-6, 10),
                          ),
                        ],
                        color: Color(0xffe5e5e5),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 21,
                            top: 21,
                            child: Text(
                              "Save up the Details?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff9a9a9a),
                                fontSize: 17,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.34,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 140,
                            top: 72,
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Color(0xffb40000),
                                fontSize: 17,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.85,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 240,
                            top: 68,
                            child: Container(
                              width: 89,
                              height: 34,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff252525),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 261,
                            top: 72,
                            child: Text(
                              "Save",
                              style: TextStyle(
                                color: Color(0xff30aaff),
                                fontSize: 17,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.85,
                              ),
                            ),
                          ),
                        ],
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
