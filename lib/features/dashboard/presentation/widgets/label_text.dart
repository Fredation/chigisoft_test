import 'package:chigisoft_test/core/data_utils/colors.dart';
import 'package:chigisoft_test/core/data_utils/strings.dart';
import 'package:flutter/material.dart';

class LabelAndText extends StatelessWidget {
  const LabelAndText({
    Key? key,
    required this.label,
    required this.text,
  }) : super(key: key);
  final String label;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: fontFamily,
            fontWeight: FontWeight.normal,
            fontSize: 13,
            color: ChigiColors.labelText,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          text,
          style: const TextStyle(
            fontFamily: fontFamily,
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: ChigiColors.busDetailText,
          ),
        ),
      ],
    );
  }
}
