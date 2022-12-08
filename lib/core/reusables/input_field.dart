// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:chigisoft_test/core/data_utils/colors.dart';
import 'package:chigisoft_test/core/data_utils/strings.dart';
import 'package:chigisoft_test/core/size_config/extensions.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final label;
  final TextEditingController controller;
  final initialValue;
  final bool obscureText;
  final TextStyle textStyle;
  final TextInputType textInputType;
  final prefixIcon;
  final suffixIcon;
  final focusNode;
  final submittedAction;
  final validator;
  final hintText;
  final errorText;
  final TextInputAction textInputAction;
  final prefixText;
  final int maxlines;
  final Function(String)? onChanged;

  const InputField({
    Key? key,
    this.label,
    required this.controller,
    this.initialValue,
    this.obscureText = false,
    this.textStyle = const TextStyle(),
    this.textInputType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.focusNode,
    this.submittedAction,
    this.validator,
    this.hintText = "",
    this.errorText,
    this.textInputAction = TextInputAction.done,
    this.prefixText,
    this.maxlines = 1,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: EdgeInsets.only(bottom: 6.height),
            child: Text(
              label,
              style: const TextStyle(
                fontFamily: fontFamily,
                fontWeight: FontWeight.normal,
                fontSize: 13,
                color: ChigiColors.labelText,
                height: 1.54,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        TextFormField(          
          onChanged: onChanged,
          controller: controller,
          initialValue: initialValue,
          focusNode: focusNode,
          keyboardType: textInputType,
          obscureText: obscureText,
          textInputAction: textInputAction,
          validator: validator,
          maxLines: maxlines,
          enabled: true,
          textAlignVertical: TextAlignVertical.center,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: fontFamily,
            fontWeight: FontWeight.normal,
            color: ChigiColors.hintText,
          ),
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                fontFamily: fontFamily,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: ChigiColors.hintText,
                height: 2,
              ),
              filled: true,
              fillColor: ChigiColors.white,
              errorText: errorText,
              errorStyle: TextStyle(
                fontFamily: fontFamily,
                fontWeight: FontWeight.normal,
                fontSize: 14.width,
                color: Colors.red,
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: ChigiColors.textFieldborder,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: ChigiColors.textFieldborder,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: ChigiColors.textFieldborder,
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 12.width),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 1.0,
                ),
              ),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              prefixText: prefixText,
              suffixIconConstraints: const BoxConstraints(
                minHeight: 20,
                minWidth: 20,
              )
              //prefixStyle: TextStyle(color: Colors.black),
              ),
        )
      ],
    );
  }
}
