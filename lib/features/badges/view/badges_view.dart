import 'package:badges_app/core/components/badges/badges.dart';
import 'package:badges_app/core/components/card/slider_card.dart';
import 'package:badges_app/core/components/card/user_rating_card.dart';
import 'package:badges_app/core/constants/text/text_constants.dart';
import 'package:badges_app/core/extensions/context_extension.dart';
import 'package:badges_app/features/badges/cubit/badges_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/base/view/base_view.dart';
import '../../../core/constants/images/image_constants.dart';

class BadgesView extends StatelessWidget {
  const BadgesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<BadgesCubit>(
      cubit: BadgesCubit(),
      onCubitReady: (cubit) {
        cubit.setContext(context);
        cubit.init();
      },
      onPageBuilder: (BadgesCubit cubit) => Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: context.appColors.white,
          appBar: AppBar(
            leadingWidth: 40.w,
            title: Text(TextConstants.appBarTitle, style: context.textTheme.headline5!.copyWith(color: context.appColors.textColor, fontFamily: 'Gotham-Medium', letterSpacing: -0.03),),
            leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SvgPicture.asset(ImageConstants.instance.iconBack,),
            ),
            elevation: 0.8,
            shadowColor: context.appColors.white,
            backgroundColor: context.appColors.white,
          ),
          body: BlocBuilder<BadgesCubit, BadgesState>(
            builder: (context, state) {
              return state.loading
                  ? const CircularProgressIndicator()
                  : Padding(
                    padding: context.paddingLowHorizontal*2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20.h,),
                          SliderCard(
                            praiseRating: cubit.usersList[0].praiseRating,
                            praiseCount: cubit.usersList[0].principalCount,
                            initialRaiting: double.parse(cubit.usersList[0].praiseRating!),
                            // ignore: sort_child_properties_last
                            child: SizedBox(
                              height: 150.h,
                              width: double.infinity,
                              child: GridView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: cubit.badgesList.length,
                                  controller: cubit.controller,
                                  gridDelegate:
                                   const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          mainAxisExtent: 150,
                                          childAspectRatio: 1 / 2,
                                          crossAxisSpacing: 16,
                                          mainAxisSpacing: 45,                                                                            
                                          ),                              
                                  itemBuilder: (BuildContext ctx, index) {
                                    return Badges(                                    
                                      badgesIcon: cubit.badgesIcon(index),
                                      badgesTitle: cubit.badgesList[index].title,
                                      praiseCount: cubit.usersList[index].praiseRating, 
                                      initialBadgeRaiting: double.parse(cubit.usersList[index].praiseRating!),
                                    );
                                  }),
                            ),
                            position: 1,                       
                          ),  
                          SizedBox(height: 33.h,),
                        Expanded(
                          child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(height: 12.h,),
                                  itemCount: cubit.badgesList.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return UserRatingCard(
                                      userName: cubit.usersList[index].authorTitle!,
                                      time: cubit.usersList[index].created!,
                                      badgeTitle: cubit.badgesList[index].title!,
                                      badgeIcon: cubit.badgesIcon(index),
                                      initialBadgeRaiting: double.parse(cubit.usersList[index].praiseRating!),
                                      description:cubit.usersList[index].message!,
                                    );
                                  }),
                        ),
    
                        ],
                      ),
                  );
            },
          )),
    );
  }


}
