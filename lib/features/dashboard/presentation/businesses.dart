import 'package:chigisoft_test/core/data_utils/colors.dart';
import 'package:chigisoft_test/core/data_utils/strings.dart';
import 'package:chigisoft_test/core/reusables/appbar.dart';
import 'package:chigisoft_test/core/reusables/input_field.dart';
import 'package:chigisoft_test/features/dashboard/presentation/states/dashboard_cubit.dart';
import 'package:chigisoft_test/features/dashboard/presentation/widgets/bottom_nav.dart';
import 'package:chigisoft_test/features/dashboard/presentation/widgets/business_names.dart';
import 'package:chigisoft_test/features/dashboard/presentation/widgets/dashboard_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllBusinessesPage extends StatelessWidget {
  AllBusinessesPage({super.key});
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final dashboardCubit = context.watch<DashboardCubit>();
    return Scaffold(
      appBar: const ChigiAppBar(),
      bottomNavigationBar: const BottomNavigationContainer(
        navColor: ChigiColors.button,
        navChild: Center(
          child: Text(
            "+ Business Place",
            style: TextStyle(
              fontFamily: fontFamily,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: ChigiColors.white,
              height: 1.375,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 32),
        children: [
          DashboardHeader(
            title: "BUSINESSES",
            subTitle: "All businesses",
            containerColor: ChigiColors.textFieldborder,
            containerChild: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "All Businesses",
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: ChigiColors.hintText,
                    height: 1.375,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: ChigiColors.hintText,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: InputField(
              controller: _searchController,
              hintText: "Search business places",
              prefixIcon: const Icon(Icons.search),
            ),
          ),
          const SizedBox(height: 32),
          BusinessNames(
            itemCount: dashboardCubit.products!.length,
            height: null,
          ),
        ],
      ),
    );
  }
}
