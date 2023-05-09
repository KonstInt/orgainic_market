import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bloc/product_list/product_list_bloc.dart';
import 'package:organic_market/bottom_bar/common/item_product.dart';

class ProductCategoryGrid extends StatelessWidget {
  final String subcategory;
  const ProductCategoryGrid({super.key,  required this.subcategory});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductListBloc()..add(ProductListLoadEvent(listId: 1, category: subcategory)),
      child: BlocBuilder<ProductListBloc, ProductListState>(
        builder: (context, state) {
          if(state is ProductListLoadedState)
          {return GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            scrollDirection: Axis.vertical,
            itemCount: state.productList.length,
            shrinkWrap: true,
            primary: false,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.w,
              childAspectRatio: 0.65,
            ),
            itemBuilder: (context, index) {
              return ItemProduct(product: state.productList[index]);
            },
          );
          }
          else{
            return SizedBox(height: 0,);
          }
        },
      ),
    );
  }
}
