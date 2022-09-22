import 'package:expense/app/constant/color.dart';
import 'package:expense/app/modules/home/views/widgets/info_balance.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // BACKGROUND
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [appYellowSoft, appPrimary.withOpacity(0.2)],
              ),
            ),
          ),
          // PAGEVIEW
          SafeArea(
            child: Column(
              children: [
                // Tidak bisa di scroll
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(),
                      Row(
                        children: [
                          Icon(Icons.keyboard_arrow_down_outlined),
                          Text("Oktober"),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_active,
                          color: appPrimary,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Account Balance"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$9400",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoBalance(
                      isIncome: true,
                    ),
                    InfoBalance(
                      isIncome: false,
                    ),
                  ],
                )
                // Bisa di scroll
              ],
            ),
          ),
        ],
      ),
    );
  }
}
