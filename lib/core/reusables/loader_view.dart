import 'package:flutter/material.dart';

class LoaderLayout extends StatelessWidget {
  final bool loading;
  final Widget child;
  final bool overlay;
  final Color? backgroundColor;
  const LoaderLayout(
      {Key? key,
      required this.loading,
      required this.child,
      this.overlay = false,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      // backgroundColor: Colors.transparent,
      color: backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      child: AbsorbPointer(absorbing: loading, child: getView()),
    );
  }

  Widget getView() {
    if (overlay) {
      return Stack(
        children: [
          child,
          if (loading)
            Stack(
              children: [
                Container(
                  color: Colors.black.withOpacity(0.75),
                ),
                const Center(
                    child: CircularProgressIndicator.adaptive(
                  backgroundColor: Colors.white,
                )),
              ],
            ),
        ],
      );
    } else {
      return loading
          ? const Center(child: CircularProgressIndicator.adaptive())
          : child;
    }
  }
}
