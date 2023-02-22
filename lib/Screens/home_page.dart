import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constant/colors.dart';
import '../Widgets/category_products.dart';
import '../Constant/app_strings.dart';
import '../Widgets/shop_product.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kThemeColor,
        leading: Image.asset("assets/align-left.png",
            height: 24.h, width: 24.w, color: const Color(0xFFE7EAEF)),
        centerTitle: true,
        title: Text(
          "StyleLab",
          style: TextStyle(
            fontSize: 26.sp,
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: const Color(0xFFE7EAEF),
            size: 25.sp,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Icon(
              Icons.shopping_cart,
              color: const Color(0xFFE7EAEF),
              size: 25.sp,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              homeBanner,
              height: 240.h,
              width: 375.w,
              fit: BoxFit.cover,

            ),
            SizedBox(height: 8.h),
            Image.asset(indicator, width: 34.2.w, height: 15.h,color: kThemeColor,),
            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shop by Product".toUpperCase(),
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: kThemeColor,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Shop_Products(),
            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SHOP BY CATEGORY",
                    style: TextStyle(
                      letterSpacing: 1.0,
                      fontSize: 16.sp,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: kThemeColor,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        All,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        Apparel,
                        style: TextStyle(
                          color: const Color(0xFF888888),
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        Dress,
                        style: TextStyle(
                          color: const Color(0xFF888888),
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        Tshirt,
                        style: TextStyle(
                          color: const Color(0xFF888888),
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        Bag,
                        style: TextStyle(
                          color: const Color(0xFF888888),
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 21.0.w),
                      child: Image.asset(
                        selectedCategory,
                        height: 5.h,
                        width: 5.w,
                        color: kThemeColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CategoryProducts(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Explore More",
                        style: TextStyle(
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 18.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
