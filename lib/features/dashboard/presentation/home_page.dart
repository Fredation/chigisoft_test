import 'package:chigisoft_test/core/data_utils/colors.dart';
import 'package:chigisoft_test/core/data_utils/strings.dart';
import 'package:chigisoft_test/core/reusables/appbar.dart';
import 'package:chigisoft_test/features/dashboard/presentation/states/dashboard_cubit.dart';
import 'package:chigisoft_test/features/dashboard/presentation/widgets/bottom_nav.dart';
import 'package:chigisoft_test/features/dashboard/presentation/widgets/business_names.dart';
import 'package:chigisoft_test/features/dashboard/presentation/widgets/horizontal_card.dart';
import 'package:chigisoft_test/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/dashboard_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboardCubit = context.watch<DashboardCubit>();
    return Scaffold(
      backgroundColor: ChigiColors.background,
      appBar: const ChigiAppBar(),
      bottomNavigationBar: BottomNavigationContainer(
        navColor: ChigiColors.homeBtmNav,
        navChild: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 16,
              width: 16,
              child: Image.asset(linkIcon),
            ),
            const SizedBox(width: 5),
            const Text(
              "Link Demand Notice",
              style: TextStyle(
                fontFamily: fontFamily,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: ChigiColors.white,
                height: 1.54,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 32),
        children: [
          const DashboardHeader(
            title: "DASHBOARD",
            subTitle: "Overview",
            containerChild: Text(
              "+ Business Place",
              style: TextStyle(
                fontFamily: fontFamily,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: ChigiColors.white,
                height: 1.375,
              ),
            ),
            containerColor: ChigiColors.button,
          ),
          const SizedBox(height: 32),
          Container(
            height: 196,
            margin: const EdgeInsets.symmetric(horizontal: 18),
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 21,
            ),
            decoration: BoxDecoration(
              color: ChigiColors.homeBoxBg,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Revenue",
                      style: TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ChigiColors.button,
                        height: 2,
                      ),
                    ),
                    Container(
                      height: 28,
                      width: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: ChigiColors.homeBoxSmallIcon,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Today",
                            style: TextStyle(
                              fontFamily: fontFamily,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: ChigiColors.white,
                            ),
                          ),
                          SizedBox(width: 2),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: ChigiColors.white,
                            size: 12,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: nairaSign,
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: ChigiColors.amountColor,
                            height: 2),
                      ),
                      TextSpan(
                        text: " 4,000,000",
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: ChigiColors.amountColor,
                            height: 2),
                      ),
                      TextSpan(
                        text: ".00",
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: ChigiColors.amountColor,
                            height: 2),
                      ),
                    ]),
                  ),
                ),
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Text(
                //     formatMoney(amount: 4000000, symbol: nairaSign),
                //     style: const TextStyle(
                //         fontSize: 28,
                //         fontWeight: FontWeight.bold,
                //         color: ChigiColors.amountColor,
                //         height: 2),
                //   ),
                // ),
                const SizedBox(height: 17),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "REVENUE COLLECTED",
                    style: TextStyle(
                      fontFamily: fontFamily,
                      fontSize: 11,
                      fontWeight: FontWeight.normal,
                      color: ChigiColors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
            height: 97,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 18),
              children: const [
                HorizontalCard(
                  title: "1",
                  subTitle: "Applications",
                  imgPath: fileIcon,
                  imgBgColor: ChigiColors.pinkLight,
                  bottomBorderColor: ChigiColors.pinkLight,
                  imgColor: ChigiColors.iconRed,
                ),
                SizedBox(width: 16),
                HorizontalCard(
                  title: "50,675",
                  subTitle: "My Business",
                  imgPath: fileIcon,
                  imgBgColor: ChigiColors.cartonBg,
                  bottomBorderColor: ChigiColors.carton,
                  imgColor: ChigiColors.businessIconColor,
                ),
                SizedBox(width: 16),
                HorizontalCard(
                  title: "12",
                  subTitle: "Sub-Agents",
                  isIcon: true,
                  icon: Icon(Icons.houseboat_outlined),
                  imgBgColor: ChigiColors.lemon,
                  bottomBorderColor: ChigiColors.lemon,
                  imgColor: ChigiColors.businessIconColor,
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
          const SizedBox(height: 34),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              "My Businesses",
              style: TextStyle(
                fontFamily: fontFamily,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: ChigiColors.businessText,
                height: 1.54,
              ),
            ),
          ),
          const SizedBox(height: 16),
          BusinessNames(
            itemCount: dashboardCubit.myProducts?.length ?? 6,
            height: 367,
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, AppRoutes.businessPages),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 33,
                    width: 128,
                    decoration: BoxDecoration(
                      color: ChigiColors.ashColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                      child: Text(
                        "All businesses",
                        style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: ChigiColors.button,
                          height: 1.54,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
