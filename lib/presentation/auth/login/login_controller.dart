import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcoin_wallet/constants/constants.dart';

class LoginController extends GetxController {
  bool email = true;
  bool phone = false;
  bool buttonLoading = false;
  bool isEyeON = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormState> phoneKey = GlobalKey<FormState>();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  // AuthRepositoryImpl repositoryImpl = AuthRepositoryImpl();

  onEmail() {
    email = true;
    phone = false;
    update([ControllerBuilders.loginController]);
  }

  onPhone() {
    email = false;
    phone = true;
    update([ControllerBuilders.loginController]);
  }

  onEye() {
    isEyeON = !isEyeON;
    update([ControllerBuilders.loginController]);
  }



  login(BuildContext context) async {
    // if (formKey.currentState!.validate()) {
    //   buttonLoading = true;
    //   update([ControllerBuilders.loginController]);
    //   rememberDetailsIfNeeded();
    //   var request = LoginRequest(
    //       email: emailTextController.text,
    //       password: passwordTextController.text,
    //       deviceToken: LocalStorage.getFCM(),
    //       deviceType: defaultTargetPlatform == TargetPlatform.android
    //           ? "android"
    //           : 'ios');
    //   var data = await repositoryImpl.login(request);
    //   buttonLoading = false;
    //
    //   data.fold((l) {
    //     if (l is ServerFailure) {
    //       CommonAlert.showAlert(context: context, message: l.message);
    //       update([ControllerBuilders.loginController]);
    //     }
    //   }, (r) async {
    //     LocalStorage.writeString(
    //         GetXStorageConstants.userId, r.data?.id.toString() ?? '');
    //     LocalStorage.writeString(GetXStorageConstants.userName,
    //         "${r.data?.firstName.toString()} ${r.data?.lastName.toString()}");
    //     LocalStorage.writeString(
    //         GetXStorageConstants.email, r.data?.email ?? '');
    //     LocalStorage.setAuthToken(r.data?.token ?? '');
    //     LocalStorage.writeBool(GetXStorageConstants.isUserLogged, true);
    //     LocalStorage.writeString(GetXStorageConstants.availability,
    //         r.data?.employeeType.toString() ?? '');
    //     LocalStorage.writeString(
    //         GetXStorageConstants.profilePic, r.data?.profilePhotoUrl ?? '');
    //
    //     // LocalStorage.writeList(
    //     //     GetXStorageConstants.reasonList, r.data?.availabilityReason ?? []);
    //     LocalStorage.saveAvailabilityReasons(r.data?.availabilityReason ?? []);
    //     await firebaseLogin();
    //
    //     Get.toNamed(AppRoutes.dashBoard);
    //     update([ControllerBuilders.loginController]);
    //   });
    //   update([ControllerBuilders.loginController]);
    // } else {}
  }

  phoneLogin(BuildContext context) async {
    // if (phoneKey.currentState!.validate()) {
    //   buttonLoading = true;
    //   update([ControllerBuilders.loginController]);
    //   var request = PhoneLoginRequest(mobile: phoneController.text);
    //   var data = await repositoryImpl.phoneLogin(request);
    //   buttonLoading = false;
    //
    //   data.fold((l) {
    //     if (l is ServerFailure) {
    //       CommonAlert.showAlert(context: context, message: l.message);
    //
    //       update([ControllerBuilders.loginController]);
    //     }
    //   }, (r) {
    //     buttonLoading = false;
    //     Get.toNamed(AppRoutes.otp, arguments: {
    //       'mobile': phoneController.text,
    //       'type': "mobile",
    //     });
    //     update([ControllerBuilders.loginController]);
    //   });
    //   update([ControllerBuilders.loginController]);
    // } else {}
  }

}
