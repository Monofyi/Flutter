import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'controller/edit_text.dart';
import 'controller/raised_button.dart';

class SupplierList extends StatefulWidget {
  const SupplierList({Key key}) : super(key: key);

  @override
  _SupplierListState createState() => _SupplierListState();
}

class _SupplierListState extends State<SupplierList> {
  final TextEditingController _supplierName = TextEditingController();
  final TextEditingController _supplierPhone = TextEditingController();
  final TextEditingController _supplierAddress = TextEditingController();
  final TextEditingController _supplierdescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0),
          child: SingleChildScrollView(
            child: Column(children: [
              const Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.orange,
                    size: 40,
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Align(
                  alignment: const Alignment(-1, 5),
                  child: Row(
                    children: const [
                       Text('Supplier Name',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 7,
                      )
                    ],
                  )),
              EditText(
                  controller: _supplierName,
                  textInputType: TextInputType.text,
                  textAlign: TextAlign.start,
                  showTex: false,
                  valueKey: "suppliername"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Align(
                  alignment: Alignment(-1, 5),
                  child: Row(
                    children: const [
                      Text('Phone Number',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 7,
                      )
                    ],
                  )),
              EditText(
                  controller: _supplierPhone,
                  textInputType: TextInputType.number,
                  textAlign: TextAlign.start,
                  showTex: false,
                  valueKey: "SupplierPhone"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Align(
                  alignment: const Alignment(-1, 5),
                  child: Row(
                    children: const [
                      Text('Address',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 7,
                      )
                    ],
                  )),
              EditText(
                  controller: _supplierAddress,
                  textInputType: TextInputType.streetAddress,
                  textAlign: TextAlign.start,
                  showTex: false,
                  valueKey: "Address"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Align(
                  alignment: const Alignment(-1, 5),
                  child: Row(
                    children: const [
                      Text(
                        'Description',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.red,
                        size: 7.0,
                      )
                    ],
                  )),
              EditText(
                  controller: _supplierdescription,
                  textInputType: TextInputType.multiline,
                  textAlign: TextAlign.start,
                  showTex: false,
                  valueKey: "Description"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.3,
                child: RaisedButtons(
                  color: Colors.black,
                  icons: const Icon(
                    Icons.check_circle_rounded,
                    color: Colors.orange,
                  ),
                  function: () {},
                  /*function: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const AddedDetail())),*/
                  text: const Text(
                    'Confirm',
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
