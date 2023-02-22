import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../screens/product_detail.dart';
import '../Constant/app_strings.dart';

class CategoryProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Category(
              image_location: 'assets/lady-coat.png',
              image_caption: "Leather Coat",
              New_price: "\$140",
            ),
            const SizedBox(width: 5),
            Category(
              image_location: 'assets/wool-coat.jpg',
              image_caption: "Women Woolen Coat",
              New_price: "\$199",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Category(
              image_location: 'assets/women-frock.jpeg',
              image_caption: "Women winter Frocks",
              New_price: '\$240',
            ),
            const SizedBox(width: 5),
            Category(
              image_location: 'assets/handbag_1.png',
              image_caption: "Classic Strap Wallet",
              New_price: "\$299",
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Category(
              image_location: 'assets/leather-jacket.png',
              image_caption: "Women Leather Jacket Faux Suede Coats",
              New_price: "\$140",
            ),
            const SizedBox(width: 5),
            Category(
              image_location: 'assets/wallet-1.png',
              image_caption: "Floral Print Wallet",
              New_price: "\$199",
            ),
          ],
        ),
      ],
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;

  final String image_caption;

  final String? New_price;

  Category({
    required this.image_location,
    required this.image_caption,
    this.New_price,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(ProductDetail());
      },
      child: Container(
          // color: Colors.red,
          width: 160.w,
          height: 260.16.h,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image_location,
                width: 165.w,
                height: 200.h,
                fit: BoxFit.cover,
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        image_caption,
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Price: " + New_price!,
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
