import 'package:flutter/material.dart';

class IndicatorTextButton extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  const IndicatorTextButton(
      {Key? key, required this.label, required this.onTap})
      : super(key: key);

  @override
  State<IndicatorTextButton> createState() => _IndicatorTextButtonState();
}

class _IndicatorTextButtonState extends State<IndicatorTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onTap,
      child: Text(
        widget.label,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
