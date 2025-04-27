// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:plant_apps/asset_helper/app_colors.dart';
import 'package:plant_apps/asset_helper/app_fonts.dart';
import 'package:plant_apps/asset_helper/app_icons.dart';
import 'package:plant_apps/common_widgets/custom_button.dart';
import 'package:plant_apps/features/auth_screen/forget_password_screen.dart';
import 'package:plant_apps/features/auth_screen/signup_screen.dart';

class LoginInScreen extends StatefulWidget {
  const LoginInScreen({super.key});

  @override
  State<LoginInScreen> createState() => _LoginInScreenState();
}

class _LoginInScreenState extends State<LoginInScreen> {
  bool _isPasswordVisible = false;
  bool _isChecked = false;
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
                    "Sign In",
                    style: TextFontStyle.headLine30w600Poppins.copyWith(
                      color: AppColors.c000000,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Let's save environement together",
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
                const SizedBox(height: 16),
                TextFormField(
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value ?? false;
                            });
                          },
                          activeColor: AppColors.primaryColor,
                          checkColor: Colors.white,
                          side: const BorderSide(color: AppColors.primaryColor),
                        ),
                        Text(
                          "Remember me",
                          style: TextFontStyle.textStyle14w400Poppins.copyWith(
                            color: AppColors.c000000,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const ForgetPasswordScreen());
                      },
                      child: Text(
                        "Forgot Password",
                        style: TextFontStyle.textStyle14w600Poppins.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 52),
                customButton(
                  height: 42,
                  borderRadius: 20,
                  name: 'Sign In',
                  onCallBack: () {},
                  context: context,
                  color: AppColors.primaryColor,
                  borderColor: AppColors.primaryColor,
                ),
                const SizedBox(height: 42),
                Text(
                  "Or sign in with",
                  style: TextFontStyle.textStyle14w400Poppins.copyWith(
                    color: AppColors.cADADAD,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppIcons.googleIcons, height: 42, width: 42),
                    const SizedBox(width: 16),
                    Image.asset(AppIcons.facebookIcons, height: 42, width: 42),
                    const SizedBox(width: 16),
                    Image.asset(AppIcons.microsoftIcons, height: 42, width: 42),
                    const SizedBox(width: 16),
                    Image.asset(AppIcons.appleIcons, height: 42, width: 42),
                  ],
                ),
                const SizedBox(height: 92),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextFontStyle.textStyle14w400Poppins.copyWith(
                        color: AppColors.cADADAD,
                      ),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        Get.to(const SignUpScreen());
                      },
                      child: Text(
                        "Sign Up",
                        style: TextFontStyle.textStyle14w600Poppins.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 92),
                Row(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
