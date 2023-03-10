import 'package:badges_app/core/components/card/slider_card.dart';
import 'package:badges_app/core/extensions/context_extension.dart';
import 'package:badges_app/features/badges/cubit/badges_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/base/view/base_view.dart';



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
            elevation: 1,
            backgroundColor: context.appColors.white,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: SliderCard(praiseRating: "4,5", praiseCount: "32", initialRaiting: 4,))
              
                //   BlocBuilder<BadgesCubit, BadgesState>(
                //   builder: (context, state) {
                //     return state.loading ? const CircularProgressIndicator() : Expanded(
                //                   child: Padding(
                //                     padding: context.paddingLowAll,
                //                     child: ListView.builder(
                //                     itemCount: cubit.badgesList.length,
                //                     itemBuilder: (BuildContext context, index) {
                //                     return Center(
                //                       child: Text(cubit.badgesList[index].title!),
                //                     );              
                //                     }),
                //                   ),
                //                 );
                //   },
                // ),
          ],


          )),
    );
  }
}
