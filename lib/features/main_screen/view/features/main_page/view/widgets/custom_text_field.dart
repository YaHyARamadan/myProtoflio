import 'package:flutter/material.dart';
import '../../../../../../../core/core_widgets/custom_text.dart';
import '../../../../../../../core/theme/text_theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.maxLines, required this.title,
  });

  final int? maxLines;
  final String title;

  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: title, style: TextThemes.sFProSize16Weight500.copyWith(fontWeight: FontWeight.w700)),
           TextField(
            maxLines: maxLines!,
            decoration:  InputDecoration(
                hintText: title,
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: const Color(0xffF2F0F8),
                focusedBorder:  const OutlineInputBorder(
                    borderSide: BorderSide(width: 1,color: Color(0xffFFB400))
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 1,color: Color(0xffFFB400))
                )
            ),
          ),
          SizedBox(height: mediaQueryHeight * 0.01),
        ],
      ),
    );
  }
}