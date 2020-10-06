import 'package:fastbuy_flutter_ecommerce/constants.dart';
import 'package:fastbuy_flutter_ecommerce/screens/home/components/icon_btn_with_counter.dart';
import 'package:fastbuy_flutter_ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Row(
              children: [
                Container(
                  width: SizeConfig.screenWidth * 0.6,
                  height: 50,
                  color: Colors.black,
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    onChanged: (value) {
                      //search value
                    },
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search Product",
                        prefixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20),
                          vertical: getProportionateScreenWidth(9),
                        )),
                  ),
                ),
                IconBtnWithCounter(
                  svgSrc: "assets/icons/Cart Icon.svg",
                  press: () {},
                ),
                IconBtnWithCounter(
                  svgSrc: "assets/icons/Bell.svg",
                  numOfItems: 3,
                  press: () {},
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
