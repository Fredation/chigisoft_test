import 'package:chigisoft_test/core/data_utils/colors.dart';
import 'package:chigisoft_test/core/data_utils/strings.dart';
import 'package:flutter/material.dart';

class HorizontalCard extends StatelessWidget {
  const HorizontalCard({
    Key? key,
    required this.title,
    required this.subTitle,
    this.imgPath,
    required this.imgBgColor,
    required this.bottomBorderColor,
    required this.imgColor,
    this.icon,
    this.isIcon = false,
  }) : super(key: key);
  final String title;
  final String subTitle;
  final String? imgPath;
  final Color imgBgColor;
  final Color bottomBorderColor;
  final Color imgColor;
  final bool isIcon;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97,
      width: 203,
      decoration: BoxDecoration(
        color: ChigiColors.white,
        border: Border(
          bottom: BorderSide(
            color: bottomBorderColor,
            width: 1,
          ),
          top: const BorderSide(
            color: ChigiColors.shadow2,
            width: 1,
          ),
          left: const BorderSide(
            color: ChigiColors.shadow2,
            width: 1,
          ),
          right: const BorderSide(
            color: ChigiColors.shadow2,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 44,
            width: 44,
            padding: const EdgeInsets.symmetric(
              vertical: 13,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: imgBgColor,
            ),
            child: isIcon
                ? icon
                : Image.asset(
                    imgPath!,
                    color: imgColor,
                  ),
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ChigiColors.boldText,
                  height: 2,
                ),
              ),
              Text(
                subTitle,
                style: const TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: ChigiColors.hintText,
                  height: 1.54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
