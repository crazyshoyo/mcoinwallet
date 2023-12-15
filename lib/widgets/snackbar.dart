import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcoin_wallet/constants/apptextstyle.dart';
import 'package:mcoin_wallet/constants/dimensions.dart';
import 'package:mcoin_wallet/constants/fontsize.dart';


class ToastUtils {
  static Timer? toastTimer;
  static OverlayEntry? _overlayEntry;
  static void showCustomToast(
      BuildContext context, String message, bool isSuccess) {
    if (toastTimer == null || !(toastTimer?.isActive ?? false)) {
      _overlayEntry = createOverlayEntry(context, message, isSuccess);
      Overlay.of(context).insert(_overlayEntry!);
      toastTimer = Timer(const Duration(seconds: 3), () {
        if (_overlayEntry != null) {
          _overlayEntry?.remove();
        }
      });
    }
  }

  static OverlayEntry createOverlayEntry(
      BuildContext context, String message, bool isSuccess) {
    final width = MediaQuery.of(context).size.width -
        2 * WidthDimensions.w_25 -
        3 * WidthDimensions.w_10 -
        WidthDimensions.w_15 -
        20;
    return OverlayEntry(
      builder: (context) => Positioned(
        top: HeightDimensions.h_80,
        right: WidthDimensions.w_25,
        left: WidthDimensions.w_25,
        child: Material(
          elevation: 1.0,
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(4),
          child: Container(
            width: MediaQuery.of(context).size.width - WidthDimensions.w_50,
            padding: EdgeInsets.only(
                left: WidthDimensions.w_10,
                right: WidthDimensions.w_10,
                top: HeightDimensions.h_15,
                bottom: HeightDimensions.h_15),
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(15)),
            child: Align(
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Visibility(
                    visible: isSuccess,
                    child: Icon(
                      isSuccess
                          ? CupertinoIcons.checkmark_circle_fill
                          : Icons.cancel,
                      size: 20,
                      color: isSuccess ? Colors.green : Colors.red,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: WidthDimensions.w_10, right: WidthDimensions.w_8),
                    child: SizedBox(
                      width: width,
                      child: Text(message,
                          maxLines: 3,
                          style: AppTextStyle.themeBoldNormalTextStyle(
                              fontSize: FontSize.sp_12,
                              color: isSuccess ? Colors.green : Colors.red)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
