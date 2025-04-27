import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_apps/asset_helper/app_colors.dart';
import 'package:plant_apps/asset_helper/app_fonts.dart';
import 'package:plant_apps/common_widgets/custom_button.dart';
import 'package:plant_apps/features/auth_screen/otp_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(33),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Send OTP",
                    style: TextFontStyle.headLine30w600Poppins.copyWith(
                      color: AppColors.c000000,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Recover your account in easy steps",
                    style: TextFontStyle.textStyle14w400Poppins.copyWith(
                      color: AppColors.c000000,
                    ),
                  ),
                ),
                const SizedBox(height: 120),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "user@example.com",
                    hintStyle: TextFontStyle.textStyle14w400Poppins.copyWith(
                      color: AppColors.cADADAD,
                    ),
                    labelStyle: TextFontStyle.textStyle14w600Poppins.copyWith(
                      color: AppColors.c000000,
                    ),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.c000000),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.c000000),
                    ),
                  ),
                ),
                const SizedBox(height: 153),
                customButton(
                  height: 42,
                  borderRadius: 20,
                  name: 'Send OTP',
                  onCallBack: () {
                    Get.to(const OTPScreen());
                  },
                  context: context,
                  color: AppColors.primaryColor,
                  borderColor: AppColors.primaryColor,
                ),
                const SizedBox(height: 34),
              ],
            ),
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
