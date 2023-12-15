import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mcoin_wallet/constants/dimensions.dart';
import 'package:mcoin_wallet/di/di.dart';
import 'package:mcoin_wallet/presentation/getx/app_pages.dart';
import 'package:mcoin_wallet/presentation/getx/approutes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await GetStorage.init();
  await ScreenUtil.ensureScreenSize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
          WidthDimensions.defaultWidth, HeightDimensions.deviceHeight),
      minTextAdapt: false,
      ensureScreenSize: true,
      useInheritedMediaQuery: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          initialBinding: InitialBinding(),
          debugShowCheckedModeBanner: false,
          title: "McoinWallet",
          initialRoute: AppRoutes.login,
          getPages: AppPages.list,
        );
      },
    );
  }
}
