import 'package:chigisoft_test/core/data_utils/colors.dart';
import 'package:chigisoft_test/core/data_utils/format_money.dart';
import 'package:chigisoft_test/core/data_utils/strings.dart';
import 'package:chigisoft_test/core/reusables/appbar.dart';
import 'package:chigisoft_test/core/size_config/extensions.dart';
import 'package:chigisoft_test/features/dashboard/data/models/product_model.dart';
import 'package:chigisoft_test/features/dashboard/presentation/widgets/label_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class BusinessDetailPage extends StatelessWidget {
  const BusinessDetailPage({super.key, required this.product});
  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChigiAppBar(),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 18),
        children: [
          Container(
            height: 153,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            decoration: const BoxDecoration(
              color: ChigiColors.card,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 46,
                  width: 46,
                  padding: const EdgeInsets.symmetric(vertical: 12.5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white.withOpacity(0.25)),
                  child: Image.asset(
                    shopIcon,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product?.title ?? "",
                      style: const TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: ChigiColors.white,
                        height: 1.375,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      height: 21,
                      width: 122,
                      decoration: BoxDecoration(
                        color: ChigiColors.sectorIcon,
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: const Center(
                        child: Text(
                          "Informal sector",
                          style: TextStyle(
                            fontFamily: fontFamily,
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: ChigiColors.sectorText,
                            height: 1.375,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "ID: ",
                            style: TextStyle(
                              fontFamily: fontFamily,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: ChigiColors.white,
                              height: 1.375,
                            ),
                          ),
                          TextSpan(
                            text: "MCI-23-02-00001",
                            style: TextStyle(
                              fontFamily: fontFamily,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: ChigiColors.white,
                              height: 1.375,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 59,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: const BoxDecoration(
                color: ChigiColors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
                boxShadow: [
                  BoxShadow(
                    color: ChigiColors.shadow2,
                    blurRadius: 5,
                  )
                ]),
            child: Row(
              children: [
                SizedBox(
                  height: 27,
                  width: 154,
                  child: DottedBorder(
                    color: ChigiColors.dottedBorder,
                    child: const Center(
                      child: Text(
                        "General Information",
                        style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: ChigiColors.button,
                          height: 1.375,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 24),
                const Text(
                  "Applications",
                  style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: ChigiColors.hintText,
                    height: 1.375,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Container(
            height: 472.height,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
            decoration: const BoxDecoration(
              color: ChigiColors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelAndText(
                  label: 'Title',
                  text: product?.title ?? "",
                ),
                const SizedBox(height: 16),
                LabelAndText(
                  label: 'Description',
                  text: product?.description ?? "",
                ),
                const SizedBox(height: 16),
                LabelAndText(
                  label: 'Brand',
                  text: product?.brand ?? "",
                ),
                const SizedBox(height: 16),
                LabelAndText(
                  label: 'Category',
                  text: product?.category ?? "",
                ),
                const SizedBox(height: 16),
                LabelAndText(
                  label: 'Price',
                  text: formatMoney(
                    amount: num.parse(product?.price.toString() ?? "0.00"),
                    symbol: nairaSign,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
