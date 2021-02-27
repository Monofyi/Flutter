import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:inventory_management/ui/components/customtextfield.dart';

class SupplierPage extends StatefulWidget {
  static String routeName = '/suppliers';
  @override
  _SupplierPageState createState() => _SupplierPageState();
}

class _SupplierPageState extends State<SupplierPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(FontAwesomeIcons.bell), onPressed: () {})
        ],
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.chevronLeft,
            size: 25,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text("Suppliers"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              //stops: [.03, 0.04, .8],
              colors: <Color>[
                Color(0xFF033CFFF),
                Color(0xFF30AAFF),
                Color(0xFF33CFFF),
                Colors.blue
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent)
                          // color: Colors.purple,
                          ),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),

                    Positioned(
                      top: -8.5,
                      left: 10.0,
                      child: Container(
                        color: Colors.white,
                        child: Text("Company Name"),
                        clipBehavior: Clip.none,
                      ),
                    ),
                    // Text("Company Name")
                  ],
                  clipBehavior: Clip.none,
                  overflow: Overflow.visible,
                  alignment: Alignment.topLeft,
                  fit: StackFit.loose,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 200,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent)
                              // color: Colors.purple,
                              ),
                          child: TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          ),
                        ),
                        Positioned(
                          top: -8.5,
                          left: 10.0,
                          child: Container(
                            color: Colors.white,
                            child: Text("Tag"),
                            clipBehavior: Clip.none,
                          ),
                        ),
                        Positioned(
                            bottom: 0.0,
                            top: 0.0,
                            right: 10.0,
                            //left: 10.0,
                            child: Icon(Icons.expand_more)),
                        // Text("Company Name")
                      ],
                      clipBehavior: Clip.none,
                      overflow: Overflow.visible,
                      alignment: Alignment.topLeft,
                      fit: StackFit.loose,
                    ),
                  ),
                  Text("+add")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueAccent)
                          // color: Colors.purple,
                          ),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),

                    Positioned(
                      top: -8.5,
                      left: 10.0,
                      child: Container(
                        color: Colors.white,
                        child: Text("Description"),
                        clipBehavior: Clip.none,
                      ),
                    ),
                    // Text("Company Name")
                  ],
                  clipBehavior: Clip.none,
                  overflow: Overflow.visible,
                  alignment: Alignment.topLeft,
                  fit: StackFit.loose,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              // Center(child: RaisedButton(onPressed: () {})),
              Center(
                child: InkWell(
                  onTap: () => print('hello'),
                  child: Container(
                    width: 100.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      // color: Colors.blueAccent,
                      border: Border.all(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Text(
                        'Confirm',
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                      ),
                    ),
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
