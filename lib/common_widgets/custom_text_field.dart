// ignore_for_file: use_super_parameters, camel_case_types, library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_apps/asset_helper/app_colors.dart';
import 'package:plant_apps/asset_helper/app_fonts.dart';

class CustomTextField_5 extends StatefulWidget {
  final String? hintText;
  final TextEditingController? controller;
  final String? leftIcon; // Left-side icon (SVG path)
  final String? rightIcon; // Right-side icon (SVG path)
  final bool isPassword;
  final bool obscureText;
  final VoidCallback? toggleVisibility;
  final String? Function(String?)? validator; // Validator function
  final Color? borderColor; // Custom border color
  final Color? fieldColor; // Custom field background color
  final double? textSize; // Custom text size
  final TextAlign? textAlign; // Custom text alignment
  final double? height; // Custom height for the field
  final double? width; // Custom height for the field
  final GestureTapCallback? onTap; // Added onTap parameter

  const CustomTextField_5({
    Key? key,
    this.hintText,
    this.controller,
    this.leftIcon,
    this.rightIcon,
    this.isPassword = false,
    this.obscureText = false,
    this.toggleVisibility,
    this.validator,
    this.borderColor, // Border color
    this.fieldColor, // Field color
    this.textSize, // Text size
    this.textAlign = TextAlign.start, // Text alignment
    this.height = 65.0, // Default height, can be customized
    this.width = 50.0, // Default height, can be customized
    this.onTap, // onTap callback to handle tap actions
  }) : super(key: key);

  @override
  _CustomTextField_5State createState() => _CustomTextField_5State();
}

class _CustomTextField_5State extends State<CustomTextField_5> {
  String? errorMessage; // Store validation error

  void validate() {
    setState(() {
      errorMessage = widget.validator?.call(widget.controller?.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: widget.width ?? double.infinity, // Use custom or default width
          height: widget.height ?? 56, // Use custom or default height
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color:
                widget.fieldColor ??
                AppColors.c191B1A, // Use custom or default color
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color:
                  widget.borderColor ??
                  (errorMessage == null
                      ? AppColors.cDFE1E6
                      : AppColors
                          .cDFE1E6), // Use custom or default border color
              width: 0.6,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Left Icon (if provided)
              if (widget.leftIcon != null) ...[
                SvgPicture.asset(widget.leftIcon!, height: 20, width: 20),
                const SizedBox(width: 12),
              ],

              // Input Field
              Expanded(
                child: TextField(
                  controller: widget.controller,
                  obscureText:
                      widget.isPassword &&
                      widget.obscureText, // Only obscure if it's a password
                  style: TextFontStyle.textStyle14w400Poppins.copyWith(
                    color: Colors.white,
                    fontSize:
                        widget.textSize ??
                        14, // Use custom or default text size
                    fontWeight: FontWeight.w400,
                  ),
                  cursorColor: AppColors.cFFFFFF,
                  textAlign:
                      widget.textAlign ??
                      TextAlign.center, // Use custom or default text alignment
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: const TextStyle(color: AppColors.c979797),
                    border: InputBorder.none,
                  ),
                  maxLines:
                      widget.isPassword && widget.obscureText
                          ? 1
                          : 4, // Limit to 1 line for password fields
                  minLines: 1, // Minimum lines when there's no text
                  onChanged: (value) => validate(), // Validate on change
                  onTap: widget.onTap, // Trigger onTap callback if provided
                ),
              ),

              // Right-side Icon (if provided)
              if (widget.rightIcon != null) ...[
                const SizedBox(width: 12),
                SvgPicture.asset(widget.rightIcon!, height: 20, width: 20),
              ],

              // Right-side Visibility Toggle (Only for Password Fields)
              if (widget.isPassword)
                GestureDetector(
                  onTap: widget.toggleVisibility,
                  child: Icon(
                    widget.obscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColors.c979797,
                  ),
                ),
            ],
          ),
        ),

        // Error Message (if exists)
        if (errorMessage != null)
          Padding(
            padding: const EdgeInsets.only(top: 4, left: 8),
            child: Text(
              errorMessage!,
              style: const TextStyle(color: Colors.red, fontSize: 12),
            ),
          ),
      ],
    );
  }
}
