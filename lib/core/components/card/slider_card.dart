import 'package:badges_app/core/constants/images/image_constants.dart';
import 'package:badges_app/core/constants/text/text_constants.dart';
import 'package:badges_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderCard extends StatelessWidget {
  final Widget? child;
  final String? praiseRating;
  final String? praiseCount;
  final double? initialRaiting;
  const SliderCard(
      {super.key,
      this.child,
      this.praiseRating,
      this.praiseCount,
      this.initialRaiting});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 258.h,
      width: 343.w,
      decoration: BoxDecoration(
        color: context.appColors.white,
        borderRadius: BorderRadius.all(context.lowRadius),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.16),
            blurRadius: 16,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              flagIconAndPraiseRaitng(context),
              cardTitleAndRaitingBar(context),
            ],
          ),



        ],
      ),
    );
  }

  Padding cardTitleAndRaitingBar(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(left: 16, top: 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sliderCardTitle(context),
                  SizedBox(
                    height: 7.h,
                  ),
                  raitingBar(context),   

                ],
              ),
            );
  }

  Padding flagIconAndPraiseRaitng(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Stack(
                children: [
                  Image.asset(ImageConstants.instance.iconFlag),
                  praiseRatingText(context)
                ],
              ),
            );
  }

  Padding praiseRatingText(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.only(top: 8, left: 12),
                    child: Text(
                      praiseRating!,
                      style: context.textTheme.headline3!.copyWith(
                        letterSpacing: -1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
  }

  Row raitingBar(BuildContext context) {
    return Row(
                    children: [
                      RatingBar.builder(
                        initialRating: initialRaiting!,
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
                          print(rating);
                        },
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        "${praiseCount!} Adet",
                        style: context.textTheme.subtitle1,
                      )
                    ],
                  );
  }

  Text sliderCardTitle(BuildContext context) {
    return Text(
                    TextConstants.sliderCardTitle,
                    style: context.textTheme.headline5!.copyWith(
                        color: context.appColors.textColor,
                        fontWeight: FontWeight.w400),
                  );
  }
}
