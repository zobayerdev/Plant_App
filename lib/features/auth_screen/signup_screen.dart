import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:plant_apps/asset_helper/app_colors.dart';
import 'package:plant_apps/asset_helper/app_fonts.dart';
import 'package:plant_apps/asset_helper/app_icons.dart';
import 'package:plant_apps/common_widgets/custom_button.dart';
import 'package:plant_apps/features/home_screen/presentation/home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = false;
  bool _isPasswordVisibleTwo = false;
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
                const SizedBox(height: 35),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "e.g: Ahmed Ariyan",
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
                const SizedBox(height: 18),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    hintText: "17xxxxxxxx",
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
                const SizedBox(height: 18),
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
                const SizedBox(height: 18),
                TextFormField(
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    labelText: "Password",
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
                const SizedBox(height: 18),
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
                const SizedBox(height: 47),
                customButton(
                  height: 42,
                  borderRadius: 20,
                  name: 'Sign Up',
                  onCallBack: () {
                    Get.to(const HomeScreen());
                  },
                  context: context,
                  color: AppColors.primaryColor,
                  borderColor: AppColors.primaryColor,
                ),
                const SizedBox(height: 42),
                Text(
                  "Or Sign Up with",
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
                      "Already have an account?",
                      style: TextFontStyle.textStyle14w400Poppins.copyWith(
                        color: AppColors.cADADAD,
                      ),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text(
                        "Sign In",
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
