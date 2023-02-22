import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constant/app_strings.dart';

class ProductDetailWidget extends StatelessWidget {
  const ProductDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 375.w,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Faux Leather Puffer Jacket",
                  style: TextStyle(letterSpacing: 1.5, fontSize: 16.sp),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            Text(
              "Price: \$250",
              style: TextStyle(fontSize: 18.sp),
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Text(
                  "Colors",
                  style: TextStyle(fontSize: 12.sp),
                ),
                SizedBox(width: 10.w),
                Container(
                  height: 21.h,
                  width: 21.h,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(width: 5.w),
                Container(
                  height: 21.h,
                  width: 21.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFDD8560),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(width: 5.w),
                Container(
                  height: 21.h,
                  width: 21.h,
                  decoration: BoxDecoration(
                    color: Color(0xFFE1E0DB),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(width: 35.w),
                Text(
                  "Size",
                  style: TextStyle(fontSize: 12.sp),
                ),
                SizedBox(width: 10.h),
                SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Center(
                      child: Text(
                        "S",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontFamily: "Tenor Sans"),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Text(
                        "M",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp,
                            fontFamily: "Tenor Sans"),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5.w),
                SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Text(
                        "L",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.sp,
                            fontFamily: "Tenor Sans"),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
