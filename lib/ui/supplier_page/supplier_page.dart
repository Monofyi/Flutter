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
              Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)
                        // color: Colors.purple,
                        ),
                    child: TextField(),
                  ),
                  Positioned(
                      top: 0.0, right: 240.0, child: Text("Company Name")),
                  // Text("Company Name")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              customTextFields(
                //controller: _passwordController,
                keyboardType: TextInputType.text,
                context: context,
                color: Colors.black,
                iconData: Icons.visibility,
                name: 'Password*',
                validator: (value) {
                  if (value.isEmpty) return 'Password is Required';
                  return null;
                },
                obscureText: false,
                iconTap: () {},
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 200,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: customTextFields(
                        //controller: _passwordController,
                        keyboardType: TextInputType.text,
                        context: context,
                        color: Colors.black,
                        iconData: Icons.visibility,
                        name: 'Password*',
                        validator: (value) {
                          if (value.isEmpty) return 'Password is Required';
                          return null;
                        },
                        obscureText: false,
                        iconTap: () {},
                      ),
                    ),
                  ],
                ),

                //  Icon(Icons.arrow_drop_down),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
