import 'package:flutter/material.dart';
import 'package:mughith/persentation/resources/color_manager.dart';
import 'package:mughith/persentation/resources/values_manager.dart';

class CustomTextFormFiled extends StatelessWidget {

  const CustomTextFormFiled(
      {
        Key? key, required this.controller,
        required this.textInputType, this.hintText, this.onTap,
        this.maxLines, this.minLines, this.suffixIcon, this.showCursor=true,
      }) : super(key: key);
  final TextEditingController controller;
  final TextInputType textInputType;
  final String? hintText ;
  final VoidCallback? onTap ;
  final int?maxLines;
  final int? minLines;
  final Widget?suffixIcon;
  final bool showCursor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: TextFormField(
        onChanged: (val){},
        onTap: onTap,
        controller:controller,
        keyboardType: textInputType,
        cursorColor: Colors.grey,
        showCursor:showCursor ,
  maxLines: maxLines,
  minLines:minLines ,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
          hintText: hintText,

          filled: true,
          fillColor: Colors.black.withOpacity(0.05),
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(HeightSized.h2),
              borderSide:  BorderSide(
                width: double.infinity,
                color: Colors.black.withOpacity(0.05),
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(HeightSized.h2),
              borderSide: BorderSide(
                width: 0,
                color: Colors.black.withOpacity(0.05),
              )),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(HeightSized.h2),
              borderSide: BorderSide(
                width: double.infinity,
                color: Colors.black.withOpacity(0.05),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(HeightSized.h2),
              borderSide: BorderSide(
                width: double.infinity,
                color: Colors.black.withOpacity(0.05),
              ),),

        ),
      ),
    );
  }
}
