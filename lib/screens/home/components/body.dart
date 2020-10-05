import 'package:fastbuy_flutter_ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(),
            child: Row(children: [
              Container(
                width: SizeConfig.screenWidth * 0.5,
                height: 50,
                color: Colors.black,
              )
            ]),
          )
        ],
      )),
    );
  }
}
