import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsBuyersNew extends StatefulWidget {
  const DetailsBuyersNew({Key key}) : super(key: key);

  @override
  _DetailsBuyersNewState createState() => _DetailsBuyersNewState();
}

class _DetailsBuyersNewState extends State<DetailsBuyersNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xffE5E5E5),
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Icon(
            Icons.arrow_back,
            size: 35,
            color: Color(0xff30aaff),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 168,
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 13,
                        offset: Offset(-1, 1),
                      ),
                    ],
                    color: Color(0xffe5e5e5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Buyer ID :",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.34,
                    ),
                  ),
                ),
                Container(
                  width: 168,
                  height: 46,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 13,
                        offset: Offset(-1, 1),
                      ),
                    ],
                    color: Color(0xffe5e5e5),
                  ),
                  child: Text(
                    "13720200",
                    style: TextStyle(
                      color: Color(0xff9a9a9a),
                      fontSize: 17,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.34,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Text(
                    "Buyer Name",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.34,
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.34,
                      color: Color(0xff30aaff),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: const TextField(
                decoration: InputDecoration(
                  //hoverColor: Colors.red,
                  //fillColor: Colors.red,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9a9a9a),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9a9a9a),
                    ),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9a9a9a),
                    ),
                  ),
                  focusColor: Colors.red,
                  hintText: 'Relience Ltd',
                  hintStyle: TextStyle(
                    color: Color(0xff9a9a9a),
                    fontSize: 17,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.85,
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Text(
                    "Phone Number",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.34,
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.34,
                      color: Color(0xff30aaff),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: const TextField(
                decoration: InputDecoration(
                  //hoverColor: Colors.red,
                  //fillColor: Colors.red,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9a9a9a),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9a9a9a),
                    ),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9a9a9a),
                    ),
                  ),
                  focusColor: Colors.red,
                  hintText: '+91 9173909820',
                  hintStyle: TextStyle(
                    color: Color(0xff9a9a9a),
                    fontSize: 17,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.85,
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Text(
                    "Address",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.34,
                    ),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.34,
                      color: Color(0xff30aaff),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: const TextField(
                decoration: InputDecoration(
                  //hoverColor: Colors.red,
                  //fillColor: Colors.red,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9a9a9a),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9a9a9a),
                    ),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9a9a9a),
                    ),
                  ),
                  focusColor: Colors.red,
                  hintText: 'Street 7, Road 28 Pin - 080790',
                  hintStyle: TextStyle(
                    color: Color(0xff9a9a9a),
                    fontSize: 17,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.85,
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Description",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.34,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: const TextField(
                decoration: InputDecoration(
                  //hoverColor: Colors.red,
                  //fillColor: Colors.red,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9a9a9a),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9a9a9a),
                    ),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff9a9a9a),
                    ),
                  ),
                  focusColor: Colors.red,
                  hintText: 'Description...',
                  hintStyle: TextStyle(
                    color: Color(0xff9a9a9a),
                    fontSize: 17,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.85,
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 129,
                  height: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 13,
                        offset: Offset(-1, 1),
                      ),
                    ],
                    color: Color(0xff252525),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.edit,
                          color: Color(0xff30aaff),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '|',
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xff30aaff),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Edit",
                          style: TextStyle(
                            fontSize: 19,
                            color: Color(0xff30aaff),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 129,
                  height: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 13,
                        offset: Offset(-1, 1),
                      ),
                    ],
                    color: Color(0xff252525),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.delete_outline,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '|',
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Delete",
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
