import 'package:collabworkx/utils/colors.dart';
import 'package:flutter/material.dart';

class CollabworkxInput extends StatefulWidget {
  const CollabworkxInput({
    Key? key,
    required this.hintText,
    this.isPassword = false,
    required this.textInputType,
    required this.textEditingController,
    required this.preffixIconData,
    required this.suffixIconData,
    required this.onSuffixIconPress,
    required this.validator,
    this.maxLines,
  }) : super(key: key);
  final String hintText;
  final bool isPassword;
  final TextInputType textInputType;
  final TextEditingController textEditingController;
  final IconData preffixIconData;
  final IconData suffixIconData;
  final VoidCallback onSuffixIconPress;
  final String? Function(String?)? validator;
  final dynamic maxLines;

  @override
  State<CollabworkxInput> createState() => _CollabworkxInputState();
}

class _CollabworkxInputState extends State<CollabworkxInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        setState(() {});
      },
      validator: widget.validator,
      controller: widget.textEditingController,
      onEditingComplete: () {},
      keyboardType: widget.textInputType,
      autofocus: false,
      maxLines: widget.maxLines,
      cursorColor: collabBlack,
      obscureText: widget.isPassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        fillColor: Colors.orange,
        contentPadding: const EdgeInsets.all(15.0),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        prefixIcon: Icon(
          widget.preffixIconData,
          color: collabBlack,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: collabBlack,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
              width: 1, style: BorderStyle.solid, color: Colors.black54),
        ),
        counterStyle: const TextStyle(color: collabBlack),
        focusColor: collabBlack,
        suffixIcon: IconButton(
          onPressed: () {
            widget.onSuffixIconPress();
          },
          icon: Icon(widget.suffixIconData),
          color: collabBlack,
        ),
      ),
      style: const TextStyle(
        color: collabBlack,
      ),
    );
  }
}

class CollabworkxTextInput extends StatefulWidget {
  const CollabworkxTextInput({
    Key? key,
    required this.hintText,
    required this.textInputType,
    required this.textEditingController,
  
  }) : super(key: key);
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController textEditingController;


  @override
  State<CollabworkxTextInput> createState() => _CollabworkxTextInputState();
}

class _CollabworkxTextInputState extends State<CollabworkxTextInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        setState(() {});
      },
      controller: widget.textEditingController,
      onEditingComplete: () {},
      keyboardType: widget.textInputType,
      autofocus: false,
      cursorColor: collabBlack,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        fillColor: Colors.orange,
        contentPadding: const EdgeInsets.all(15.0),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
       
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.red,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: collabBlack,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
              width: 1, style: BorderStyle.solid, color: Colors.black54),
        ),
        counterStyle: const TextStyle(color: collabBlack),
        focusColor: collabBlack,
       
      ),
      style: const TextStyle(
        color: collabBlack,
      ),
    );
  }
}
