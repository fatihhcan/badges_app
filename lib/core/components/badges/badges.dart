import 'package:badges_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Badges extends StatelessWidget {
  final String? badgesIcon;
  final String? badgesTitle;
  final String? praiseCount;
  final double? initialBadgeRaiting;

  const Badges({super.key, required this.badgesIcon, required this.badgesTitle, required this.praiseCount, required this.initialBadgeRaiting,  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Image.asset(
                badgesIcon!,
                height: 52,
                width: 52,
              ),
            ),
            SizedBox(
              width: 6.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  badgesTitle!,
                  style: context.textTheme.bodyText1!.copyWith(color: context.appColors.textColor),
                ),            
                raitingBar(context),
                 const SizedBox(
                  height: 2,
                ),
                Text("$praiseCount Adet", style: context.textTheme.subtitle1)
              ],
            ),
          ],
        ),
        // SizedBox(
        //   height: 15,
        // ),

      ],
    );
    
  }
      Row raitingBar(
      BuildContext context,) {
    return Row(
      children: [
        RatingBar.builder(
          initialRating: initialBadgeRaiting!,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 13.84,
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            //print(rating);
          },
        ),
        SizedBox(
          width: 6.w,
        ),

        
      ],
    );
  }
}
