import 'package:fastbuy_flutter_ecommerce/constants.dart';
import 'package:fastbuy_flutter_ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
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
                Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(12)),
                  height: getProportionateScreenWidth(46),
                  width: getProportionateScreenWidth(46),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset("assets/icons/Bell.svg"),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
