import 'package:flutter/material.dart';

class McoinWalletContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Decoration? decoration;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  const McoinWalletContainer({Key? key, this.height, this.width, this.decoration, this.margin, this.padding, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height,
      width: width,
      decoration: decoration,
      margin: margin,
      padding: padding,
      child: child,
    );
  }
}
