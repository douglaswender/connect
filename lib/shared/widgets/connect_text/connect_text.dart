import 'package:connect/shared/widgets/connect_text/connect_text_styles.dart';
import 'package:flutter/material.dart';

class ConnectText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final List<ConnectText>? spans;
  const ConnectText(
    this.text, {
    super.key,
    this.style,
    this.spans,
  });

  @override
  State<ConnectText> createState() => _ConnectTextState();
}

class _ConnectTextState extends State<ConnectText> {
  TextStyle? style;
  @override
  void initState() {
    super.initState();
    style = widget.style ?? ConnectTextStyles.paragraph();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.spans != null) {
      return Text.rich(
        TextSpan(
            text: widget.text,
            style: widget.style,
            children: widget.spans!
                .map((e) => TextSpan(text: e.text, style: e.style))
                .toList()),
      );
    }
    return Text(
      widget.text,
      style: style,
    );
  }
}
