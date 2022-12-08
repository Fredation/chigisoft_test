import 'package:chigisoft_test/core/data_utils/colors.dart';
import 'package:chigisoft_test/core/data_utils/strings.dart';
import 'package:chigisoft_test/features/dashboard/presentation/states/dashboard_cubit.dart';
import 'package:chigisoft_test/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BusinessNames extends StatelessWidget {
  const BusinessNames({
    Key? key,
    required this.itemCount,
    required this.height,
  }) : super(key: key);
  final int itemCount;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final dashboardCubit = context.watch<DashboardCubit>();
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: ChigiColors.white,
        border: Border.all(color: ChigiColors.border, width: 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            color: ChigiColors.border,
            child: Row(
              children: const [
                Text(
                  "NAME",
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: ChigiColors.hintText,
                    height: 1.54,
                  ),
                ),
              ],
            ),
          ),
          ...List.generate(itemCount, (index) {
            final product = itemCount == 6
                ? dashboardCubit.myProducts![index]
                : dashboardCubit.products![index];
            return GestureDetector(
              onTap: () => Navigator.pushNamed(
                  context, AppRoutes.businessDetailPage,
                  arguments: product),
              child: Container(
                height: 52,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  border: index == (itemCount - 1)
                      ? null
                      : const Border(
                          bottom: BorderSide(
                            color: ChigiColors.border,
                          ),
                        ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: ChigiColors.hintText,
                        height: 1.54,
                      ),
                    ),
                    SizedBox(
                      height: 11,
                      width: 6,
                      child: Image.asset(iconRight),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
