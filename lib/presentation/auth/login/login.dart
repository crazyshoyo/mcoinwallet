import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcoin_wallet/constants/appcolors.dart';
import 'package:mcoin_wallet/constants/apptextstyle.dart';
import 'package:mcoin_wallet/constants/constants.dart';
import 'package:mcoin_wallet/constants/dimensions.dart';
import 'package:mcoin_wallet/constants/fontsize.dart';
import 'package:mcoin_wallet/constants/images.dart';
import 'package:mcoin_wallet/presentation/auth/login/login_controller.dart';
import 'package:mcoin_wallet/presentation/getx/approutes.dart';
import 'package:mcoin_wallet/widgets/mcoin_wallet_scaffold.dart';
import 'package:mcoin_wallet/widgets/mcoin_wallet_textfield.dart';
import 'package:mcoin_wallet/widgets/oz_container.dart';
import 'package:mcoin_wallet/widgets/oz_text_button.dart';
import 'package:mcoin_wallet/widgets/oz_text_widget.dart';
import 'package:mcoin_wallet/widgets/spacing.dart';
import 'package:mcoin_wallet/widgets/validators.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

final LoginController loginController = Get.find<LoginController>();
  GlobalKey globalKey = GlobalKey();

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: loginController,
      id: ControllerBuilders.loginController,
      builder: (controller) {
        return McoinWalletScaffold(
            bottom: false,
            body: SafeArea(
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: WidthDimensions.w_5, right: WidthDimensions.w_5),
                  child: McoinWalletContainer(
                    // height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          VerticalSpacing(height: HeightDimensions.h_20),
                          SizedBox(
                            height: HeightDimensions.h_150,
                              width: HeightDimensions.h_100,
                              child: Image.asset(Images.appLogo)),
                          VerticalSpacing(height: HeightDimensions.h_60),
                          McoinWalletContainer(
                            padding: EdgeInsets.only(
                                left: WidthDimensions.w_20,
                                right: WidthDimensions.w_20),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  VerticalSpacing(
                                      height: HeightDimensions.h_16),
                                  Align(
                                    alignment: Alignment.center,
                                    child: McoinWalletContainer(
                                      height: 4,
                                      width: WidthDimensions.w_80,
                                      decoration: BoxDecoration(
                                          color: AppColors.blackButton,
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                    ),
                                  ),
                                  VerticalSpacing(
                                      height: HeightDimensions.h_30),
                                  McoinWalletTextWidget(
                                      title: 'Login to continue',
                                      style:
                                          AppTextStyle.themeBoldNormalTextStyle(
                                              fontSize: FontSize.sp_24,
                                              color: AppColors.blackButton)),
                                  VerticalSpacing(
                                      height: HeightDimensions.h_25),
                                   Form(
                                          key: controller.formKey,
                                          child: Column(
                                            children: [
                                              McoinWalletTextField(
                                                  style: AppTextStyle
                                                      .normalTextStyle(
                                                          FontSize.sp_12,
                                                          Colors.black),
                                                  height: HeightDimensions.h_50,
                                                  floatingLabelBehavior:
                                                      FloatingLabelBehavior
                                                          .auto,
                                                  controller: controller
                                                      .emailTextController,
                                                  label: "Email",
                                                  validator:
                                                      Validator.emailValidate,
                                                  prefixIcon: Image.asset(
                                                      Images.emailIcon,
                                                      scale: 3.5,color: AppColors.appColor,)),
                                              VerticalSpacing(
                                                  height:
                                                      HeightDimensions.h_20),
                                              McoinWalletTextField(
                                                style: AppTextStyle
                                                    .normalTextStyle(
                                                        FontSize.sp_12,
                                                        Colors.black),
                                                heightEnable: true,
                                                height: HeightDimensions.h_50,
                                                controller: controller
                                                    .passwordTextController,
                                                label: "Password",
                                                isObscureText:
                                                    controller.isEyeON,
                                                validator:
                                                    Validator.passwordValidate,
                                                prefixIcon: Image.asset(
                                                    Images.password,
                                                    scale: 3.5,color: AppColors.appColor,),
                                                sufixIcon: controller.isEyeON ==
                                                        true
                                                    ? GestureDetector(
                                                        onTap: () {
                                                          controller.onEye();
                                                        },
                                                        child: Image.asset(
                                                          Images.eyesOff,
                                                          scale: 6.5,
                                                        ))
                                                    : GestureDetector(
                                                        onTap: () {
                                                          controller.onEye();
                                                        },
                                                        child: Image.asset(
                                                            Images
                                                                .passwordVisible,
                                                            scale: 3.5),
                                                      ),
                                              ),
                                              VerticalSpacing(
                                                  height:
                                                      HeightDimensions.h_15),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: WidthDimensions.w_15,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    GestureDetector(
                                                        onTap: () {
                                                          Get.toNamed(
                                                              AppRoutes.login);
                                                        },
                                                        child: McoinWalletTextWidget(
                                                            title:
                                                                'Forgot password?',
                                                            style: AppTextStyle
                                                                .normalTextStyle(
                                                                    FontSize
                                                                        .sp_10,
                                                                    Colors
                                                                        .black))),
                                                  ],
                                                ),
                                              ),
                                              VerticalSpacing(
                                                  height:
                                                      HeightDimensions.h_30),
                                              McoinWalletTextButton(
                                                  loading:
                                                      controller.buttonLoading,
                                                  title: 'Login',
                                                  margin: EdgeInsets.zero,
                                                  onTap: () {}),
                                            ],
                                          ),
                                        ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom))
                                ]),
                          )
                        ]),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
