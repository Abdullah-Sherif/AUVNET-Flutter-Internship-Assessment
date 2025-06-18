import 'package:auvnet_internship_assessment/core/barrel.dart';
import 'package:flutter/material.dart';

class CustomTextInput extends StatefulWidget {
  const CustomTextInput({
    super.key,
    this.leadingIcon,
    required this.controller,
    this.isPassword = false,
    this.hintText,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
    this.focusNode,
    this.borderRadius = 6,
    this.width = 350,
    this.errorMessage,
    this.onChanged,
    this.onEditingComplete,
    this.underline = false,
    this.trailingIcon,
    this.onTrailingIconPressed,
    this.borderless = true,
    this.formFit = false,
  });

  final Icon? leadingIcon;
  final TextEditingController controller;
  final bool isPassword;
  final String? hintText;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final FocusNode? focusNode;
  final double borderRadius;
  final double width;
  final String? errorMessage;
  final Function(String)? onChanged;
  final Function()? onEditingComplete;
  final bool underline;
  final Icon? trailingIcon;
  final Function()? onTrailingIconPressed;
  final bool borderless;
  final bool formFit;

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  late bool _isPasswordVisible;

  @override
  void initState() {
    super.initState();
    _isPasswordVisible = !widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: widget.formFit ? IntrinsicWidth(child: _buildTextInput()) : SizedBox(width: widget.width, child: _buildTextInput()),
    );
  }

  Widget _buildTextInput() {
    return Column(
      children: [
        Form(
          child: TextFormField(
            focusNode: widget.focusNode,
            controller: widget.controller,
            obscureText: !_isPasswordVisible,
            style: TextStyle(color: widget.textColor),
            onChanged: widget.onChanged,
            onEditingComplete: widget.onEditingComplete,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(10, 20, 10, widget.underline ? 10 : 0),
              hintText: widget.hintText,
              hintStyle: TextStyle(color: widget.textColor?.withAlpha((0.5 * 255).toInt())),
              prefixIcon: widget.leadingIcon,
              suffixIcon:
                  widget.isPassword
                      ? IconButton(
                        icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off, color: widget.textColor),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      )
                      : widget.trailingIcon != null
                      ? IconButton(icon: widget.trailingIcon!, onPressed: widget.onTrailingIconPressed)
                      : null,
              fillColor: widget.backgroundColor,
              filled: widget.backgroundColor != null,
              border:
                  widget.underline
                      ? const UnderlineInputBorder()
                      : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(widget.borderRadius),
                        borderSide: widget.borderless ? BorderSide.none : BorderSide(color: widget.borderColor ?? Colors.black),
                      ),
              focusedBorder:
                  widget.underline
                      ? const UnderlineInputBorder()
                      : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(widget.borderRadius),
                        borderSide: widget.borderless ? BorderSide.none : BorderSide(color: widget.borderColor ?? Colors.black),
                      ),
            ),
          ),
        ),
        if (widget.errorMessage != null)
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(widget.errorMessage!, style: context.textTheme.labelSmall?.copyWith(color: Colors.red)),
            ),
          ),
      ],
    );
  }
}
