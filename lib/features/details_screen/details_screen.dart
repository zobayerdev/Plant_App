import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_apps/asset_helper/app_fonts.dart';
import 'package:plant_apps/asset_helper/app_icons.dart';
import 'package:plant_apps/asset_helper/app_images.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.detailsImages),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                const SizedBox(height: 25),
                Row(
                  children: [
                    //const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        AppIcons.backIcon,
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppIcons.buildingIcons, width: 80, height: 80),
                    const SizedBox(width: 10),
                    const Text(
                      'Office',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                numberWidget(title: 'Total number of people', number: '52'),
                numberWidget(title: 'Total number of rooms', number: '7'),
                numberWidget(title: 'Total area(sqft)', number: '3700'),
                numberWidget(title: 'Total Refrigetor', number: '2'),
                numberWidget(title: 'Total Computers', number: '60'),
                numberWidget(title: 'Total Indoor Plants', number: '23'),
                numberWidget(title: 'Total Kitchen Burner', number: '2'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class numberWidget extends StatelessWidget {
  final String? title;
  final String? number;

  const numberWidget({super.key, this.title, this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Space out title and controls
        children: [
          Row(
            children: [
              Image.asset(AppIcons.greenIcons, width: 20, height: 20),
              const SizedBox(width: 10),
              Text(
                title ?? 'Green',
                style: TextFontStyle.textStyle14w600Poppins,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // Decrease number functionality here
                },
                child: Image.asset(AppIcons.minus, width: 30, height: 30),
              ),
              const SizedBox(width: 10),
              Text(number ?? "01", style: TextFontStyle.headLine24w600Poppins),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  // Increase number functionality here
                },
                child: Image.asset(AppIcons.plus, width: 24, height: 24),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
