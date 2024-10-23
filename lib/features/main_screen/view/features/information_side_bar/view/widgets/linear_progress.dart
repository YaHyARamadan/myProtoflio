import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LinearProgress extends StatelessWidget {
  const LinearProgress({super.key, required this.language, required this.progress});
  final String language;
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                language,
                style:  TextStyle(fontSize: 4.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                "${(progress * 100).toInt()}%",
                style:  TextStyle(fontSize: 4.sp,fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(height: 4.0),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[300],
              valueColor: const AlwaysStoppedAnimation(Colors.orange),
              minHeight: 8.0,
            ),
          ),
        ],
      ),
    );
  }
}
