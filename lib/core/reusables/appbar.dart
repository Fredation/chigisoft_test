import 'package:chigisoft_test/core/data_utils/colors.dart';
import 'package:chigisoft_test/core/data_utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChigiAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Function? onPressed;
  final Widget? bottom;
  final List<Widget>? actions;
  final double bottomHeight;
  final Color? backgroundColor;
  final Color? textColor;
  final Widget? leading;

  const ChigiAppBar(
      {Key? key,
      this.title,
      this.onPressed,
      this.bottom,
      this.actions,
      this.bottomHeight = 100,
      this.backgroundColor,
      this.textColor,
      this.leading})
      : super(key: key);

  @override
  Size get preferredSize =>
      Size.fromHeight(bottom == null ? kToolbarHeight : bottomHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor ?? ChigiColors.white,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: backgroundColor ?? ChigiColors.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark),
      centerTitle: true,
      elevation: 1,
      shadowColor: ChigiColors.border,
      title: Container(
        height: 21,
        width: 77,
        decoration: BoxDecoration(
          color: ChigiColors.pink,
          borderRadius: BorderRadius.circular(11),
        ),
        child: const Center(
          child: Text(
            'Agent',
            style: TextStyle(
              fontFamily: fontFamily,
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: ChigiColors.appBarText,
            ),
          ),
        ),
      ),
      bottom: bottom == null
          ? PreferredSize(
              preferredSize: const Size.fromHeight(0), child: Container())
          : PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: bottom!,
            ),
      leadingWidth: 120,

      // primary: false,
      leading: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: SizedBox(
          height: 29,
          child: Image.asset(
            ministryIcon,
          ),
        ),
      ),

      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 18.0),
          child: Icon(
            Icons.dehaze,
            size: 26,
            color: ChigiColors.black,
          ),
        ),
      ],
    );
  }
}
