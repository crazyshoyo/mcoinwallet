import 'package:flutter/material.dart';
import 'package:mcoin_wallet/constants/appcolors.dart';
import 'package:mcoin_wallet/constants/apptextstyle.dart';
import 'package:mcoin_wallet/constants/dimensions.dart';
import 'package:mcoin_wallet/constants/fontsize.dart';
import 'package:mcoin_wallet/widgets/oz_container.dart';
import 'package:mcoin_wallet/widgets/oz_text_widget.dart';


class OzAppBar extends StatelessWidget {
  final String title;
  final bool backButton;
  const OzAppBar({super.key,required this.title,this.backButton = false});

  @override
  Widget build(BuildContext context) {
    return  McoinWalletContainer(
      height: HeightDimensions.h_50,
      decoration: const BoxDecoration(
        color: AppColors.white,
      ),
      child: Center(child: McoinWalletTextWidget(title: title, style: AppTextStyle.themeBoldNormalTextStyle(fontSize: FontSize.sp_18),)),
    );
  }
}
