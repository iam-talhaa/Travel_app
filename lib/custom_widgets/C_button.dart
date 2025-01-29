import 'package:flutter/material.dart';

class Custom_button extends StatefulWidget {
  final b_height;
  final b_width;
  final color;
  final text;
  VoidCallback ontap;
  Custom_button(
      {super.key,
      required this.color,
      required this.b_height,
      required this.ontap,
      required this.text,
      required this.b_width});

  @override
  State<Custom_button> createState() => _Custom_buttonState();
}

class _Custom_buttonState extends State<Custom_button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Container(
        height: widget.b_height,
        width: widget.b_width,
        decoration: BoxDecoration(
            color: widget.color, borderRadius: BorderRadius.circular(18)),
        child: Center(
            child: Text(
          widget.text,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
    );
  }
}
