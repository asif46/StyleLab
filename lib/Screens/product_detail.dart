import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../Constant/app_strings.dart';
import '../Constant/colors.dart';
import '../Controller/home_controller.dart';
import '../Widgets/product_detail_size.dart';
import '../Widgets/recommended_products.dart';

final List<String> imgList = [
  slider_1,
  slider_2,
  slider_3
];

class ProductDetail extends StatelessWidget {
  // final CarouselController carouselController = CarouselController();

  // int _current = 0;
  final CarouselController _controller = CarouselController();
  final List indicatorList = [];

  HomeController homeController = Get.put(HomeController());

  ProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    indicatorList.clear();
    for (int i = 0; i < 3; i++) {
      indicatorList.add('');
    }
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.west,
            color: const Color(0xFFE7EAEF),
            size: 25.sp,
          ),
        ),
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
        backgroundColor: kThemeColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() {
              return Column(children: [
                CarouselSlider(
                  items: imageSliders,
                  carouselController: _controller,
                  options: CarouselOptions(
                      height: 460.h,
                      autoPlay: false,
                      enlargeCenterPage: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        // _current = index;
                        homeController.current.value = index;
                        // setState(() {
                        //
                        // });
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: indicatorList.asMap().entries.map((entry) {
                    return GestureDetector(
                      child: Transform.rotate(
                        angle: 2.2,
                        child: Container(
                          width: 5.h,
                          height: 5.h,
                          margin: const EdgeInsets.symmetric(
                              vertical: 1, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: (homeController.current.value == entry.key
                                  ? kThemeColor
                                  : Colors.grey)),
                        ),
                      ),
                    );
                  }).toList(),
                )
              ]);
            }),
            SizedBox(height: 25.h),
            const ProductDetailWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    '''Unstitched Printed Lawn Shirt
Geometrical print in two tones with floral detailing on the placket. Detailing of geometric print on the sleeves and hem.\n
Fabric: Lawn
Weight: 294 g''',
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Container(
              height: 45.h,
              width: 375.w,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: kThemeColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text(
                  "Add to Cart",
                  style: TextStyle(fontSize: 16.sp, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            const Divider(),
            SizedBox(
              height: 10.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You may also like",
                style: TextStyle(
                  fontSize: 18.sp,
                ),
              ),
            ),
            SizedBox(height: 15.h),
            RecommendedProducts(),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}

// Product Detail Slider

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          // color: Colors.yellow,
          child: Container(
            margin: const EdgeInsets.all(10.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: 350.w,
                      height: 460.h,
                    ),
                    Positioned(
                      bottom: 5.0,
                      right: 0.0,
                      child: Container(
                        height: 70.h,
                        margin: const EdgeInsets.all(8),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 280, top: 35),
                          child: Column(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.withOpacity(0.7)),
                                child: const Center(
                                  child: Icon(Icons.favorite,
                                      color: Colors.pink),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
