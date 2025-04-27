// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:plant_apps/asset_helper/app_colors.dart';
import 'package:plant_apps/asset_helper/app_fonts.dart';
import 'package:plant_apps/asset_helper/app_icons.dart';
import 'package:plant_apps/features/auth_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginInScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset(AppIcons.appIcon, height: 214, width: 214)],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Powered by',
            style: TextFontStyle.textStyle12w400Poppins.copyWith(
              color: AppColors.cADADAD,
            ),
          ),
          const SizedBox(width: 5),
          Text(
            'M360 ICT',
            style: TextFontStyle.textStyle14w600Poppins.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
