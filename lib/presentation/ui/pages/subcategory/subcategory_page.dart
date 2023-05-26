import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../domain/bloc/bloc_view.dart';
import '../../../../internal/dependencies/repository_module.dart';
import '../../../../domain/routes/router.gr.dart';
import '../../../../utils/constants.dart';
import '../../../widgets/common/bottom_nav_shadow.dart';

@RoutePage()
class SubCategoryPage extends StatelessWidget {
  const SubCategoryPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubcategoryBloc(repository: RepositoryModule.getRepository())..add(SubcategoryLoadEvent()),
      child: BlocBuilder<SubcategoryBloc, SubcategoryState>(
        builder: (context, state) {
          if(state is SubcategoryLoadedState)
          {
            return Scaffold(
            appBar: AppBar(
              iconTheme: Theme.of(context).iconTheme,
              shadowColor:
                  Theme.of(context).colorScheme.shadow.withOpacity(0.5),
              elevation: 5,
              backgroundColor: Theme.of(context).colorScheme.onBackground,
              centerTitle: true,
              title: Text(
                'Категория',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(15),
                ),
              ),
            ),
            body: Stack(
              fit: StackFit.expand,
              children: [
                ListView.builder(
                  padding: EdgeInsets.only(
                      top: 10.h,
                      bottom: MyConstants.kBottomNavBarHeight + 50.h),
                  itemBuilder: (context, index) {
                    return subcategoryBuilder(
                        context, index,state.subcategories[index]);
                  },
                  itemCount: state.subcategories.length,
                ),
                Positioned(
                  bottom: MyConstants.kBottomNavBarHeight,
                  left: 0,
                  right: 0,
                  child: const BottomNavShadow(),
                ),
              ],
            ),
          );
          }
          else{
            return const SizedBox(height: 0,);
          }
        },
      ),
    );
  }

  Widget subcategoryBuilder(BuildContext context, int index, String text) {
    return InkWell(
      onTap: () {
        AutoRouter.of(context).push(SubCategoryListRoute(subcategory: text));
      },
      child: Container(
        height: 64.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14.sp,
                        ),
                  ),
                  SvgPicture.asset(
                    MyAssets.kRowRight,
                    height: 10.r,
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
