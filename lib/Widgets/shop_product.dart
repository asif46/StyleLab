import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Constant/app_strings.dart';
import '../Screens/product_detail.dart';

class Shop_Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: ladyBag,
            image_caption: "Quilted Clutch Leather Bag",
            New_price: "\$150",
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: slider_1,
            image_caption: "Faux Leather Puffer Jacket",
            New_price: "\$200",
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: slider_3,
            image_caption: "Black Faux Leather Puffer Jacket",
            New_price: "\$300",
          ),
          SizedBox(width: 10.w),
          Category(
            image_location: 'assets/women-frock.jpeg',
            image_caption: "Winter Cotton Shirt-Printed",
            New_price: "\$250",
          ),
        ],
      ),
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
      child: SizedBox(
          width: 150.w,
          height: 250.h,
          child: Column(
            children: [
              Image.asset(
                image_location,
                width: 254.89.w,
                height: 150.64.h,
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
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "Price: ${New_price!}",
                        style: TextStyle(
                            fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
