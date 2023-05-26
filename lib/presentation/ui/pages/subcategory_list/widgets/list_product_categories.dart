import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/presentation/widgets/shimmer/shimmer_item_product.dart';
import '../../../../../domain/bloc/bloc_view.dart';
import '../../../../../internal/dependencies/repository_module.dart';
import 'products_category_grid.dart';

class ListProductCategories extends StatelessWidget {
  final String subcategory;
  const ListProductCategories({super.key, required this.subcategory});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        cacheExtent: 20000.h,
        itemCount: 133,
        itemBuilder: (context, index) {
          return itemBuild(context, index);
        });
  }

  Widget itemBuild(BuildContext context, int item) {
    return BlocProvider(
      create: (context) =>
          ProductListBloc(repository: RepositoryModule.getRepository())
            ..add(ProductListLoadEvent(listId: 1, category: subcategory)),
      child: BlocBuilder<ProductListBloc, ProductListState>(
          builder: (context, state) {
        if (state is ProductListLoadedState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 15.h),
                child: Text(
                  subcategory,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 18.sp),
                ),
              ),
              ProductCategoryGrid(products: state.productList),
            ],
          );
        } else if (state is ProductListLoadingState) {
          return GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            scrollDirection: Axis.vertical,
            itemCount: 4,
            shrinkWrap: true,
            primary: false,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.w,
              childAspectRatio: 0.65,
            ),
            itemBuilder: (context, index) {
              return const ShimmerItemProduct();
            },
          );
        } else {
          return const SizedBox(
            height: 0,
          );
        }
      }),
    );
  }
}
