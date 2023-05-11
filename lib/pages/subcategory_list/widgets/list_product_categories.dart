import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bloc/product_list/product_list_bloc.dart';
import 'package:organic_market/models/short_product_model.dart';
import 'package:organic_market/pages/subcategory_list/widgets/products_category_grid.dart';

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
      create: (context) => ProductListBloc()
        ..add(ProductListLoadEvent(listId: 1, category: subcategory)),
      child: BlocBuilder<ProductListBloc, ProductListState>(
          builder: (context, state) {
        if(state is ProductListLoadedState){   
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 15.h),
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
        }
        else{
          return SizedBox(height: 0,);
        }
      }),
    );
  }
}
