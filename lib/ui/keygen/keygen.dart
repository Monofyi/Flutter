import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Keygen extends StatefulWidget {
  const Keygen({Key key}) : super(key: key);

  @override
  _KeygenState createState() => _KeygenState();
}

class _KeygenState extends State<Keygen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 150,
              ),
              Container(
                width: 288,
                height: 45,
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 21,
                      offset: Offset(-2, 2),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: TextField(
                  //showCursor: false,
                  //cursorHeight: 15,
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    //  height: 2.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.only(
                        bottom: 15, top: 15, left: 10, right: 10),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 55, right: 10, top: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Wrong Username",
                  style: TextStyle(
                    color: Color(0xffe10000),
                    fontSize: 13,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.65,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(left: 55, right: 10, top: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Key is successfully is generated",
                    style: TextStyle(
                      color: Color(0xff282828),
                      fontSize: 17,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.85,
                    ),
                  )),
              SizedBox(
                height: 430,
              ),
              Container(
                alignment: Alignment.center,
                width: 288,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: Color(0xffffb700),
                ),
                child: Text(
                  "Generate Key",
                  style: TextStyle(
                    color: Color(0xff282828),
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
      ),
    );
  }
}
