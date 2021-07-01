import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'controller/raised_button.dart';

class AddedDetail extends StatelessWidget {
  const AddedDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Icon(
                Icons.cloud_done_rounded,
                color: Colors.black,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                'Saved',
                style: TextStyle(color: Colors.orange),
              ),
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            const Text('New detail is successfully added.'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            SvgPicture.asset('assets/Component_68.svg'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.3,
              child: RaisedButtons(
                  color: Colors.black,
                  icons: const Icon(
                    Icons.arrow_forward,
                    color: Colors.orange,
                  ),
                  function: () {}, /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SupplierList())),*/

                  text: const Text(
                    'Back to Home',
                    style: TextStyle(color: Colors.orange),
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
