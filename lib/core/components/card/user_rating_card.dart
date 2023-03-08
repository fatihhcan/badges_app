import 'package:badges_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserRatingCard extends StatelessWidget {
  const UserRatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 207.h,
      width: 345.w,
  decoration: BoxDecoration(
    color: context.appColors.white,
    borderRadius: BorderRadius.all(
       context.normalRadius
    ),
    boxShadow: const [
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.16),
        blurRadius: 16,
        offset: Offset(0, 8),
      ),
    ],
  ),
);
  }
}