import 'package:chigisoft_test/core/data_utils/colors.dart';
import 'package:chigisoft_test/core/data_utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChigiButton extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final void Function()? onPressed;
  final bool isFilled;
  final Color? textColor;
  final Color? color;
  final bool isDisabled;
  final Widget? leading;
  final Widget? trailing;
  final bool useLightText;
  const ChigiButton({
    Key? key,
    required this.text,
    this.height = 40,
    this.width = double.infinity,
    this.isFilled = true,
    required this.onPressed,
    this.isDisabled = false,
    this.textColor,
    this.color,
    this.leading,
    this.trailing,
    this.useLightText = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: isDisabled,
      child: InkWell(
        onTap: () {
          HapticFeedback.lightImpact();
          onPressed!();
        },
        // splashColor: Colors.amberAccent,
        child: Container(
            height: height,
            width: width,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            // color: fillColor!,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: isDisabled
                  ? ChigiColors.border
                  : color ?? (isFilled ? ChigiColors.button : null),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (leading != null) ...[
                    leading!,
                    const SizedBox(width: 10),
                  ],
                  Text(
                    text,
                    style: TextStyle(
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: isDisabled
                          ? ChigiColors.hintText
                          : (isFilled
                              ? Colors.white
                              : ChigiColors.button),
                    ),
                  ),
                  if (trailing != null) ...[
                    const SizedBox(width: 10),
                    trailing!,
                  ],
                ],
              ),
            )),
      ),
    );
  }
}
