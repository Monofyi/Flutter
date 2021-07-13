import 'package:flutter/material.dart';

class BuyersListNewDesign extends StatefulWidget {
  const BuyersListNewDesign({Key key}) : super(key: key);

  @override
  _BuyersListNewDesignState createState() => _BuyersListNewDesignState();
}

class _BuyersListNewDesignState extends State<BuyersListNewDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Icon(
            Icons.arrow_back,
            color: Color(0xff30aaff),
            size: 35,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
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
                height: 55,
              ),
              // Container(
              //   margin: const EdgeInsets.only(left: 10, right: 10),
              //   child: Text(
              //     "Description",
              //     style: TextStyle(
              //       fontSize: 17,
              //       fontFamily: "Nunito",
              //       fontWeight: FontWeight.w700,
              //       letterSpacing: 0.34,
              //     ),
              //   ),
              // ),
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
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 220,
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(34),
                    color: Color(0xff252525),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 13,
                    vertical: 6,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Confirm",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff30aaff),
                          fontSize: 17,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.34,
                        ),
                      ),
                      SizedBox(width: 87),
                      Container(
                        width: 34,
                        height: 34,
                        decoration: BoxDecoration(
                          color: Color(0xff30aaff),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Icon(
                          Icons.done,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
