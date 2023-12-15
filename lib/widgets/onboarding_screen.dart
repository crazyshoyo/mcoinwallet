// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ozstaff/approutes.dart';
// import 'package:ozstaff/constants/appcolors.dart';
// import 'package:ozstaff/constants/apptextstyle.dart';
// import 'package:ozstaff/constants/constants.dart';
// import 'package:ozstaff/constants/dimensions.dart';
// import 'package:ozstaff/constants/fontsize.dart';
// import 'package:ozstaff/constants/images.dart';
// import 'package:ozstaff/datasource/local/local_storage.dart';
// import 'package:ozstaff/widgets/oz_scaffold.dart';
// import 'package:ozstaff/widgets/oz_text_button.dart';
// import 'package:ozstaff/widgets/oz_text_widget.dart';
// import 'package:ozstaff/widgets/spacing.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// class OnBoardingScreenWidget extends StatefulWidget {
//   const OnBoardingScreenWidget({super.key});
//
//   @override
//   State<OnBoardingScreenWidget> createState() => _OnBoardingScreenWidgetState();
// }
//
// class _OnBoardingScreenWidgetState extends State<OnBoardingScreenWidget> {
//   PageController controller = PageController();
//   bool lastPage = false;
//   @override
//   Widget build(BuildContext context) {
//     return OZScaffold(
//         body: Stack(
//       children: [
//         lastPage
//             ? const SizedBox.shrink()
//             : Padding(
//                 padding: EdgeInsets.only(
//                     top: HeightDimensions.h_10, right: WidthDimensions.w_20),
//                 child: Align(
//                   alignment: Alignment.topRight,
//                   child: GestureDetector(
//                       onTap: () {
//                         controller.jumpToPage(4);
//                       },
//                       child: SizedBox(
//                           height: HeightDimensions.h_55,
//                           width: HeightDimensions.h_55,
//                           child: Image.asset(Images.skipButton))),
//                 ),
//               ),
//         Padding(
//           padding: const EdgeInsets.only(top: 100),
//           child: PageView(
//             controller: controller,
//             onPageChanged: (index) {
//               setState(() {
//                 lastPage = (index == 4);
//               });
//             },
//             children: [
//               Column(
//                 children: [
//                   OZTextWidget(
//                       title: 'Communication',
//                       style: AppTextStyle.themeBoldSevenTextStyle(
//                           fontSize: FontSize.sp_26,
//                           color: AppColors.blackButton)),
//                   VerticalSpacing(height: HeightDimensions.h_10),
//                   OZTextWidget(
//                       textAlign: TextAlign.center,
//                       title:
//                           'Lorem Ipsum is simply printing and\ntypesetting industry.',
//                       style: AppTextStyle.normalTextStyle(
//                           FontSize.sp_14, AppColors.blackLight)),
//                   VerticalSpacing(height: HeightDimensions.h_50),
//                   SizedBox(
//                       height: HeightDimensions.h_280,
//                       width: HeightDimensions.h_280,
//                       child: Image.asset(Images.onBoarding1)),
//                 ],
//               ),
//               Column(
//                 children: [
//                   OZTextWidget(
//                       title: 'Shifts',
//                       style: AppTextStyle.themeBoldSevenTextStyle(
//                           fontSize: FontSize.sp_26,
//                           color: AppColors.blackButton)),
//                   VerticalSpacing(height: HeightDimensions.h_10),
//                   OZTextWidget(
//                       textAlign: TextAlign.center,
//                       title:
//                           'Lorem Ipsum is simply printing and\ntypesetting industry.',
//                       style: AppTextStyle.normalTextStyle(
//                           FontSize.sp_14, AppColors.blackLight)),
//                   VerticalSpacing(height: HeightDimensions.h_20),
//                   SizedBox(
//                       height: HeightDimensions.h_300,
//                       width: HeightDimensions.h_300,
//                       child: Image.asset(Images.onBoarding2)),
//                 ],
//               ),
//               Column(
//                 children: [
//                   OZTextWidget(
//                       title: 'Job Board',
//                       style: AppTextStyle.themeBoldSevenTextStyle(
//                           fontSize: FontSize.sp_26,
//                           color: AppColors.blackButton)),
//                   VerticalSpacing(height: HeightDimensions.h_10),
//                   OZTextWidget(
//                       textAlign: TextAlign.center,
//                       title:
//                           'Lorem Ipsum is simply printing and\ntypesetting industry.',
//                       style: AppTextStyle.normalTextStyle(
//                           FontSize.sp_14, AppColors.blackLight)),
//                   VerticalSpacing(height: HeightDimensions.h_20),
//                   SizedBox(
//                       height: HeightDimensions.h_300,
//                       width: HeightDimensions.h_300,
//                       child: Image.asset(Images.onBoarding3)),
//                 ],
//               ),
//               Column(
//                 children: [
//                   OZTextWidget(
//                       title: 'Location',
//                       style: AppTextStyle.themeBoldSevenTextStyle(
//                           fontSize: FontSize.sp_26,
//                           color: AppColors.blackButton)),
//                   VerticalSpacing(height: HeightDimensions.h_10),
//                   OZTextWidget(
//                       textAlign: TextAlign.center,
//                       title:
//                           'Lorem Ipsum is simply printing and\ntypesetting industry.',
//                       style: AppTextStyle.normalTextStyle(
//                           FontSize.sp_14, AppColors.blackLight)),
//                   VerticalSpacing(height: HeightDimensions.h_50),
//                   SizedBox(
//                       height: HeightDimensions.h_280,
//                       width: HeightDimensions.h_280,
//                       child: Image.asset(Images.onBoarding4)),
//                 ],
//               ),
//               Column(
//                 children: [
//                   OZTextWidget(
//                       title: 'Clock In / Clock Out',
//                       style: AppTextStyle.themeBoldSevenTextStyle(
//                           fontSize: FontSize.sp_26,
//                           color: AppColors.blackButton)),
//                   VerticalSpacing(height: HeightDimensions.h_10),
//                   OZTextWidget(
//                       textAlign: TextAlign.center,
//                       title:
//                           'Lorem Ipsum is simply printing and\ntypesetting industry.',
//                       style: AppTextStyle.normalTextStyle(
//                           FontSize.sp_14, AppColors.blackLight)),
//                   VerticalSpacing(height: HeightDimensions.h_20),
//                   SizedBox(
//                       height: HeightDimensions.h_300,
//                       width: HeightDimensions.h_300,
//                       child: Image.asset(Images.onBoarding5)),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         Container(
//           alignment: Alignment(0, lastPage ? 0.70 : 0.85),
//           child: SmoothPageIndicator(
//               controller: controller,
//               count: 5,
//               effect: WormEffect(
//                   dotWidth: 10,
//                   dotHeight: 10,
//                   activeDotColor: AppColors.appColor,
//                   dotColor: AppColors.appColor.withOpacity(0.4))),
//         ),
//         Visibility(
//             visible: lastPage,
//             child: Align(
//                 alignment: const Alignment(0, 0.94),
//                 child: GestureDetector(
//                   onTap: () {
//                     LocalStorage.writeBool(
//                         GetXStorageConstants.onBoarding, true);
//                     Get.toNamed(AppRoutes.login);
//                   },
//                   child: Stack(
//                     children: [
//                       OzTextButton(
//                         margin: EdgeInsets.only(
//                             left: WidthDimensions.w_60,
//                             right: WidthDimensions.w_60),
//                         height: HeightDimensions.h_45,
//                         title: 'Get Started',
//                         // onTap: () {
//                         //   LocalStorage.writeBool(
//                         //       GetXStorageConstants.onBoarding, true);
//                         //   Get.toNamed(AppRoutes.login);
//                         // }
//                       ),
//                       Positioned(
//                         top: HeightDimensions.h_15,
//                         right: WidthDimensions.w_100,
//                         child: SizedBox(
//                             width: HeightDimensions.h_20,
//                             child: Image.asset(Images.arrow)),
//                       )
//                     ],
//                   ),
//                 )))
//       ],
//     ));
//   }
// }
