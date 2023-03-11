import 'package:badges_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserRatingCard extends StatelessWidget {
  final String userName;
  final String time;
  final String badgeTitle;
  final double initialBadgeRaiting;
  final String description;
  final String badgeIcon;
  const UserRatingCard(
      {super.key,
      required this.userName,
      required this.time,
      required this.badgeTitle,
      required this.initialBadgeRaiting,
      required this.description,
      required this.badgeIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 207.h,
      width: 345.w,
      decoration: BoxDecoration(
        color: context.appColors.white,
        borderRadius: BorderRadius.all(context.normalRadius),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.16),
            blurRadius: 16,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            SizedBox(
              height: 12.5.h,
            ),
            profileBuild(context),
            SizedBox(
              height: 16.5.h,
            ),
            badgeBuild(context),
            SizedBox(
              height: 5.51.h,
            ),
            descriptionBuild(context)
          ],
        ),
      ),
    );
  }

  Text descriptionBuild(BuildContext context) {
    return Text(
            description,
            style: context.textTheme.bodyText1!
                .copyWith(color: context.appColors.textColor, fontSize: 12),
            textAlign: TextAlign.start,
          );
  }

  Row badgeBuild(BuildContext context) {
    return Row(
            children: [
              Image.asset(
                badgeIcon,
                height: 65,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      badgeTitle,
                      style: context.textTheme.headline4!.copyWith(
                          color: context.appColors.textColor,
                          fontFamily: 'Gotham-Medium'),
                    ),
                    raitingBar(context),
                  ],
                ),
              )
            ],
          );
  }

  Row profileBuild(BuildContext context) {
    return Row(
            children: [
              Container(
                height: 32.h,
                width: 32.w,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: context.textTheme.bodyText1!.copyWith(
                          fontSize: 12,
                          color: context.appColors.textColor,
                          fontFamily: 'Gotham-Bold'),
                    ),
                    Text(
                      'Dün ${time.substring(8)}`da gönderildi ',
                      style: context.textTheme.bodyText1!.copyWith(
                          fontSize: 12,
                          color: context.appColors.textColor,
                          fontFamily: 'Gotham-Book'),
                    ),
                  ],
                ),
              )
            ],
          );
  }

  Row raitingBar(
    BuildContext context,
  ) {
    return Row(
      children: [
        RatingBar.builder(
          initialRating: initialBadgeRaiting,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 19.2,
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
