import 'package:expense/app/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoBalance extends StatelessWidget {
  const InfoBalance({
    Key? key,
    required this.isIncome,
  }) : super(key: key);

  final bool isIncome;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      width: Get.width * 0.4,
      decoration: BoxDecoration(
        color: isIncome ? appGreen : appRed,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: appWhite,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Image.asset(
                isIncome ? 'assets/icons/in.png' : 'assets/icons/out.png'),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  isIncome ? "Income" : "Outcome",
                  style: TextStyle(
                    color: appWhite,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                FittedBox(
                  child: Text(
                    "\$5000",
                    style: TextStyle(
                      color: appWhite,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
