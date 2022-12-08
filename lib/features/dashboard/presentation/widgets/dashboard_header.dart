import 'package:chigisoft_test/core/data_utils/colors.dart';
import 'package:chigisoft_test/core/data_utils/strings.dart';
import 'package:flutter/material.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.containerColor,
    required this.containerChild,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Color? containerColor;
  final Widget containerChild;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: ChigiColors.smallText,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                subTitle,
                style: const TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ChigiColors.boldText,
                  height: 1.77,
                ),
              )
            ],
          ),
          Container(
            height: 40,
            width: 154,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: containerChild,
            ),
          )
        ],
      ),
    );
  }
}
