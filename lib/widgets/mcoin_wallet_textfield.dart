import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mcoin_wallet/constants/apptextstyle.dart';
import 'package:mcoin_wallet/constants/dimensions.dart';
import 'package:mcoin_wallet/constants/fontsize.dart';
import '../constants/appcolors.dart';

class McoinWalletTextField extends StatelessWidget {
  final String? label;
  final Widget? prefixIcon;
  final Widget? sufixIcon;
  final TextEditingController? controller;
  final Color? color;
  final double? height;
  final double? borderRadius;
  final Color? borderColor;
  final int? maxlines;
  final bool heightEnable;
  final bool boldStyle;
  final String? hintText;
  final bool? isObscureText;
  final FloatingLabelBehavior floatingLabelBehavior;
  final TextStyle? style;
  final String? Function(String?)? validator;
  final bool readOnly;

  const McoinWalletTextField(
      {super.key,
        this.height,
        this.maxlines,
        this.label,
        this.prefixIcon,
        this.controller,
        this.color,
        this.borderColor,
        this.heightEnable = true,
        this.boldStyle = false,
        this.borderRadius,
        this.hintText,
        this.style,
        this.sufixIcon,
        this.isObscureText,
        this.floatingLabelBehavior = FloatingLabelBehavior.auto,
        this.validator,
        this.readOnly = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: isObscureText ?? false,
      enableSuggestions: !(isObscureText ?? false),
      autocorrect: !(isObscureText ?? false),
      maxLines: maxlines ?? 1,
      obscuringCharacter: "*",
      style:
      style ?? AppTextStyle.normalTextStyle(FontSize.sp_15, Colors.black),
      cursorColor: AppColors.appColor,
      controller: controller,
      decoration: InputDecoration(
          isDense: true,
          floatingLabelBehavior: floatingLabelBehavior,
          prefixIcon: prefixIcon,
          suffixIcon: sufixIcon,
          filled: true,
          fillColor: color ?? AppColors.scaffold,
          enabledBorder: OutlineInputBorder(
              borderRadius:
              BorderRadius.circular(borderRadius ?? HeightDimensions.h_20),
              borderSide: BorderSide(
                color: borderColor ?? const Color(0xFFD8D8D8),
              )),
          errorBorder: OutlineInputBorder(
              borderRadius:
              BorderRadius.circular(borderRadius ?? HeightDimensions.h_20),
              borderSide: BorderSide(
                color: borderColor ?? const Color(0xFFD8D8D8),
              )),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius:
              BorderRadius.circular(borderRadius ?? HeightDimensions.h_20),
              borderSide: BorderSide(
                color: borderColor ?? const Color(0xFFD8D8D8),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius:
              BorderRadius.circular(borderRadius ?? HeightDimensions.h_20),
              borderSide: BorderSide(
                color: borderColor ?? const Color(0xFFD8D8D8),
              )),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          labelText: label ?? '',
          hintText: hintText ?? '',
          floatingLabelStyle: boldStyle
              ? AppTextStyle.themeBoldNormalTextStyle(
              fontSize: FontSize.sp_18, color: Colors.black)
              : AppTextStyle.normalTextStyle(FontSize.sp_18, Colors.black),
          labelStyle:
          AppTextStyle.normalTextStyle(FontSize.sp_14, Colors.black)),
    );
  }
}

class McoinWalletLabelField extends StatelessWidget {
  final String? label;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final Color? color;
  final double? height;
  final double? borderRadius;
  final Color? borderColor;
  final int? maxlines;
  final bool heightEnable;
  final TextInputAction? inputAction;
  final String? hintText;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  const McoinWalletLabelField(
      {super.key,
        this.height,
        this.maxlines,
        this.label,
        this.validator,
        this.prefixIcon,
        this.controller,
        this.inputAction = TextInputAction.done,
        this.color,
        this.onFieldSubmitted,
        this.borderColor,
        this.heightEnable = true,
        this.borderRadius,
        this.hintText,
        this.inputFormatters});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines ?? 1,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: AppTextStyle.normalTextStyle(FontSize.sp_12, Colors.black),
      cursorColor: AppColors.appColor,
      controller: controller,
      textInputAction: inputAction,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        isDense: true,
        helperText: " ",
        prefixIcon: prefixIcon,
        filled: true,
        fillColor: color ?? AppColors.scaffold,
        enabledBorder: OutlineInputBorder(
            borderRadius:
            BorderRadius.circular(borderRadius ?? HeightDimensions.h_20),
            borderSide: BorderSide(
              color: borderColor ?? const Color(0xFFD8D8D8),
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius:
            BorderRadius.circular(borderRadius ?? HeightDimensions.h_20),
            borderSide: BorderSide(
              color: borderColor ?? const Color(0xFFD8D8D8),
            )),
        border: const OutlineInputBorder(borderSide: BorderSide.none),
        hintText: hintText ?? '',
      ),
    );
  }
}
