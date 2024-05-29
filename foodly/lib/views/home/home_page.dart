import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/common/custom_container.dart';
import 'package:foodly/common/heading.dart';
import 'package:foodly/constants/constants.dart';
import 'package:foodly/views/home/all_fastest_foods.dart';
import 'package:foodly/views/home/all_nearby_restaurant.dart';
import 'package:foodly/views/home/recommendations_page.dart';
import 'package:foodly/views/home/widgets/category_list.dart';
import 'package:foodly/views/home/widgets/food_list.dart';
import 'package:foodly/views/home/widgets/nearby_restaurants_list.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: Container(height: 130.h),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              const CategoryList(),
              Heading(
                text: "Nearby Restaurants",
                onTap: () {
                  Get.to(
                    () => const AllNearbyRestaurants(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900),
                  );
                },
              ),
              const NearbyRestaurants(),
              Heading(
                text: "Try Something New",
                onTap: () {
                  Get.to(
                    () => const RecommendationsPage(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900),
                  );
                },
              ),
              const FoodsList(),
              Heading(
                text: "Food Closer to You",
                onTap: () {
                  Get.to(
                    () => const AllFastestFoods(),
                    transition: Transition.cupertino,
                    duration: const Duration(milliseconds: 900),
                  );
                },
              ),
              const FoodsList(),
            ],
          ),
        ),
      ),
    );
  }
}
