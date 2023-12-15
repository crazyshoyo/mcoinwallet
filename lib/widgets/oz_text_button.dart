import 'package:flutter/cupertino.dart';
import 'package:mcoin_wallet/constants/appcolors.dart';
import 'package:mcoin_wallet/constants/apptextstyle.dart';
import 'package:mcoin_wallet/constants/dimensions.dart';
import 'package:mcoin_wallet/constants/fontsize.dart';
import 'package:mcoin_wallet/widgets/oz_container.dart';
import 'package:mcoin_wallet/widgets/oz_text_widget.dart';


class McoinWalletTextButton extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color? textColor;
  final BoxDecoration? decoration;
  final bool isIcon;
  final Color? buttonColor;
  final void Function()? onTap;
  final double? fontSize;
  final Color? borderColor;
  final BorderRadiusGeometry? borderRadius;
  final bool loading;
  final Color? loadingColor;
  const McoinWalletTextButton(
      {super.key,
      this.height,
      this.width,
      this.margin,
      this.padding,
      this.decoration,
      required this.title,
      this.textColor,
      this.onTap,
      this.isIcon = false,
      this.fontSize,
      this.buttonColor,
      this.borderRadius,
      this.borderColor,
      this.loading = false, this.loadingColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: McoinWalletContainer(
        height: height ?? HeightDimensions.h_50,
        width: width ?? double.infinity,
        padding: padding ?? const EdgeInsets.all(5),
        margin: margin ?? const EdgeInsets.all(15),
        decoration: decoration ??
            BoxDecoration(
              border: Border.all(color: borderColor ?? AppColors.transParent),
              borderRadius: borderRadius ?? BorderRadius.circular(15),
              color: buttonColor ?? AppColors.appColor,
            ),
        child: Center(
            child:  loading ?  CupertinoActivityIndicator(color: loadingColor ?? AppColors.appColor) :  McoinWalletTextWidget(
                title: title,
                style: AppTextStyle.themeNormalLightTextStyle(
                    fontSize: fontSize ?? FontSize.sp_14,
                    color: textColor ?? AppColors.white))),
      ),
    );
  }
}
