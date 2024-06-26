import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'apptheme.dart';

class CommonTextField extends StatefulWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final bool? obSecure;
  final bool readOnly;
  final VoidCallback? onTap;
  final VoidCallback? onEditingCompleted;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final ValueChanged<String>? onFieldSubmitted;
  final bool isMulti;
  final bool autofocus;
  final bool enabled;
  final String? errorText;
  final String? labelText;
  final String? hintText;
  final dynamic contentPadding;
  final Widget? suffixIcon;
  final Widget? prefix;

  final List<TextInputFormatter>? inputFormatters;

  const CommonTextField({
    super.key,
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obSecure,
    this.contentPadding,
    this.onTap,
    this.isMulti = false,
    this.readOnly = false,
    this.autofocus = false,
    this.errorText,
    required this.hintText,
    this.suffixIcon,
    this.prefix,
    this.enabled = true,
    this.onEditingCompleted,
    this.onChanged,
    this.onSaved,
    this.labelText,
    this.inputFormatters,
    this.onFieldSubmitted,
  });

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: const TextStyle(),
        autofocus: false,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textInputAction: TextInputAction.next,
        onFieldSubmitted: widget.onFieldSubmitted,
        inputFormatters: widget.inputFormatters,
        onChanged: widget.onChanged,
        onEditingComplete: widget.onEditingCompleted,
        obscureText: widget.obSecure ?? false,
        minLines: widget.isMulti ? 4 : 1,
        maxLines: widget.isMulti ? null : 1,
        onTap: widget.onTap,
        enabled: widget.enabled,
        readOnly: widget.readOnly,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        decoration: InputDecoration(
          counterStyle: const TextStyle(
            color: AppTheme.primaryColor,
            fontSize: 25,
          ),
          counter: const Offstage(),
          errorMaxLines: 2,
          enabled: widget.enabled,
          contentPadding: widget.contentPadding,
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: widget.hintText,
          errorText: widget.errorText,
          labelText: widget.labelText,
          prefixIcon: widget.prefix,
          suffixIcon: widget.suffixIcon,
          hintStyle: const TextStyle(
            color: AppTheme.secondaryColor,
            fontSize: 13,
          ),
          border: InputBorder.none,
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.grey.shade200)),
          errorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.grey.shade200)),
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.grey.shade200)),
          disabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.grey.shade200),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Colors.grey.shade200),
          ),
        ),
        validator: widget.validator);
  }
}
