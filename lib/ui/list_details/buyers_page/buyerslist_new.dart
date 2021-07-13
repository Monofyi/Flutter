import 'package:flutter/material.dart';

class BuyersListNew extends StatefulWidget {
  const BuyersListNew({Key key}) : super(key: key);

  @override
  _BuyersListNewState createState() => _BuyersListNewState();
}

class _BuyersListNewState extends State<BuyersListNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Color(0xff30aaff),
        ),
        title: Text(
          "Buyer",
          style: TextStyle(
            color: Color(0xff30aaff),
            fontSize: 25,
            letterSpacing: 0.98,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 40,
          color: Color(0xff30aaff),
        ),
        //mini: true,
        onPressed: () {},
        backgroundColor: Color(0xff252525),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 159,
                  height: 46,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 15,
                  ),
                  child: Text(
                    "Relience Ltd",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff252525),
                      fontSize: 13,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.26,
                    ),
                  ),
                ),
                Container(
                  width: 159,
                  height: 46,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    left: 14,
                    right: 15,
                  ),
                  child: Text(
                    "Plastic Company....",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff252525),
                      fontSize: 13,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.26,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 159,
                  height: 46,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 15,
                  ),
                  child: Text(
                    "Relience Ltd",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff252525),
                      fontSize: 13,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.26,
                    ),
                  ),
                ),
                Container(
                  width: 159,
                  height: 46,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    left: 14,
                    right: 15,
                  ),
                  child: Text(
                    "Plastic Company....",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff252525),
                      fontSize: 13,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.26,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 159,
                  height: 46,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 15,
                  ),
                  child: Text(
                    "Relience Ltd",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff252525),
                      fontSize: 13,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.26,
                    ),
                  ),
                ),
                Container(
                  width: 159,
                  height: 46,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    left: 14,
                    right: 15,
                  ),
                  child: Text(
                    "Plastic Company....",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff252525),
                      fontSize: 13,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.26,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 159,
                  height: 46,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 15,
                  ),
                  child: Text(
                    "Relience Ltd",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff252525),
                      fontSize: 13,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.26,
                    ),
                  ),
                ),
                Container(
                  width: 159,
                  height: 46,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    left: 14,
                    right: 15,
                  ),
                  child: Text(
                    "Plastic Company....",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff252525),
                      fontSize: 13,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.26,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
