import 'package:flutter/material.dart';

class McoinWalletTextWidget extends StatelessWidget {
  final String title;
  final TextStyle style;
  final TextAlign textAlign;
  final TextOverflow textOverflow;
  final int? maxLines;
  final bool softWrap;

  const McoinWalletTextWidget(
      {Key? key,
        required this.title,
        required this.style,
        this.textAlign = TextAlign.start,
        this.textOverflow = TextOverflow.ellipsis,
        this.maxLines,
      this.softWrap = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style,
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
      softWrap: softWrap,
    );
  }
}
