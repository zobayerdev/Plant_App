import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:plant_apps/asset_helper/app_colors.dart';
import 'package:plant_apps/asset_helper/app_fonts.dart';
import 'package:plant_apps/common_widgets/custom_button.dart';
import 'package:plant_apps/features/auth_screen/reset_password_screen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final TextEditingController otpController = TextEditingController();

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
                    "Verify OTP",
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
                const SizedBox(height: 70),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        "An email has been sent to",
                        style: TextFontStyle.textStyle14w400Poppins.copyWith(
                          color: AppColors.cADADAD,
                        ),
                      ),
                      Text(
                        " user@example.com",
                        style: TextFontStyle.textStyle14w700Poppins.copyWith(
                          color: AppColors.c000000,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Please enter the OTP code",
                    style: TextFontStyle.textStyle14w400Poppins.copyWith(
                      color: AppColors.cADADAD,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                PinCodeTextField(
                  length: 4,
                  animationType: AnimationType.fade,
                  controller: otpController,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(12),
                    fieldHeight: 65,
                    fieldWidth: 70,
                    inactiveFillColor: AppColors.cFFFFFF,
                    borderWidth: 2,
                    errorBorderColor: AppColors.cFFFFFF,
                    inactiveColor: AppColors.c000000.withOpacity(0.1),
                    selectedColor: AppColors.primaryColor,
                    selectedBorderWidth: 2,
                    activeBorderWidth: 2,
                    activeFillColor: AppColors.cFFFFFF,
                    activeColor: AppColors.cFFFFFF,
                    selectedFillColor: AppColors.cFFFFFF,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  appContext: context,
                ),
                const SizedBox(height: 145),
                customButton(
                  height: 42,
                  borderRadius: 20,
                  name: 'Verify OTP',
                  onCallBack: () {
                    Get.to(const ResetPasswordScreen());
                  },
                  context: context,
                  color: AppColors.primaryColor,
                  borderColor: AppColors.primaryColor,
                ),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Didn’t receive a code?",
                      style: TextFontStyle.textStyle14w400Poppins.copyWith(
                        color: AppColors.cADADAD,
                      ),
                    ),
                    Text(
                      " Resend",
                      style: TextFontStyle.textStyle14w600Poppins.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
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
