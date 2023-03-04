import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextField extends StatefulWidget {
  //const CustomTextField({super.key});

  final IconData prefixIcon;
  final IconData sufixIcon;
  final String label;
  bool showPrefix;
  bool showSufix;
  bool secretField;

  CustomTextField(
      {required this.prefixIcon,
      required this.label,
      required this.sufixIcon,
      this.showPrefix = false,
      this.showSufix = false,
      this.secretField = false});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: TextFormField(
        obscureText: widget.secretField,
        decoration: InputDecoration(
          prefixIcon: (widget.showPrefix == true ? Icon(widget.prefixIcon) : null),
          labelText: widget.label,
          suffixIcon: (widget.showSufix == true
              ? IconButton(
                  icon: Icon(widget.sufixIcon),
                  onPressed: () {
                    setState(() {
                      widget.secretField = !widget.secretField;
                    }); 
                  },
                )
              : null),
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
