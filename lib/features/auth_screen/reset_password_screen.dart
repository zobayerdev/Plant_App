import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:plant_apps/asset_helper/app_colors.dart';
import 'package:plant_apps/asset_helper/app_fonts.dart';
import 'package:plant_apps/asset_helper/app_icons.dart';
import 'package:plant_apps/common_widgets/custom_button.dart';
import 'package:plant_apps/features/auth_screen/login_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool _isPasswordVisible = false;
  bool _isPasswordVisibleTwo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(33),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Reset Password",
                    style: TextFontStyle.headLine30w600Poppins.copyWith(
                      color: AppColors.c000000,
                    ),
                  ),
                ),
                const SizedBox(height: 135),
                TextFormField(
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: "New Password",
                    hintText: "new password",
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
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        _isPasswordVisible
                            ? AppIcons.eyeOffSvg
                            : AppIcons.eyeSvg,
                        color: AppColors.c000000,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  obscureText: !_isPasswordVisibleTwo,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "confirm password",
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
                    suffixIcon: IconButton(
                      icon: SvgPicture.asset(
                        _isPasswordVisibleTwo
                            ? AppIcons.eyeOffSvg
                            : AppIcons.eyeSvg,
                        color: AppColors.c000000,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisibleTwo = !_isPasswordVisibleTwo;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 83),
                customButton(
                  height: 42,
                  borderRadius: 20,
                  name: 'Reset Password',
                  onCallBack: () {
                    Get.to(const LoginInScreen());
                  },
                  context: context,
                  color: AppColors.primaryColor,
                  borderColor: AppColors.primaryColor,
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
