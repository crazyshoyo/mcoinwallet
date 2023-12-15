import 'package:get/get.dart';
import 'package:mcoin_wallet/presentation/auth/login/login.dart';
import 'package:mcoin_wallet/presentation/auth/login/login_controller.dart';
import 'package:mcoin_wallet/presentation/getx/approutes.dart';


class AppPages {
  static const Duration duration = Duration(milliseconds: 500);
  static const Transition transition = Transition.cupertino;
  static var list = [
    // GetPage(
    //   transitionDuration: duration,
    //   transition: transition,
    //   name: AppRoutes.onBoarding,
    //   page: () => const OnBoardingScreenWidget(),
    // ),
    GetPage(
        transitionDuration: duration,
        transition: transition,
        name: AppRoutes.login,
        page: () => const Login(),
        binding: BindingsBuilder(() {
          Get.lazyPut<LoginController>(() => LoginController());
        })),
  ];
}
