import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcoin_wallet/constants/appcolors.dart';
import 'package:mcoin_wallet/constants/dimensions.dart';
import 'package:mcoin_wallet/widgets/mcoin_wallet_scaffold.dart';
import 'package:mcoin_wallet/widgets/oz_container.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _loadWidget();
    super.initState();
  }

  _loadWidget() async {
    // var duration = const Duration(seconds: 3);
    // return Timer(duration, () {
    //   if (LocalStorage.getBool(GetXStorageConstants.isUserLogged) == true) {
    //     Get.toNamed(AppRoutes.dashBoard);
    //   } else {
    //     LocalStorage.getBool(GetXStorageConstants.onBoarding) == true
    //         ? Get.toNamed(AppRoutes.login)
    //         : Get.toNamed(AppRoutes.onBoarding);
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return McoinWalletScaffold(
      top: false,
      bottom: false,
      body: McoinWalletContainer(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: AppColors.white),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
