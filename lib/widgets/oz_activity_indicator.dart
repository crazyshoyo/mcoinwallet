import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcoin_wallet/constants/dimensions.dart';

class OZActivityIndicator extends StatelessWidget {
  final double? raidus;
  final Color? color;
  const OZActivityIndicator({super.key, this.raidus, this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return AbsorbPointer(
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Center(
          child: SizedBox(
              height: HeightDimensions.h_150,
              width: HeightDimensions.h_150,
              child: const Image(image: AssetImage("Images.loaderOne"))),
        ),
      ),
    );
  }
}
