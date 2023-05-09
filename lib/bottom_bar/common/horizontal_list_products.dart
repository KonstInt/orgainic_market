import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bloc/product_list/product_list_bloc.dart';
import 'package:organic_market/bottom_bar/common/item_product.dart';
import 'package:organic_market/models/short_product_model.dart';

class HorizontalListProducts extends StatelessWidget {
  HorizontalListProducts({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => 
                      ProductListBloc()..add(ProductListLoadEvent(listId: 1)),
      child: BlocBuilder<ProductListBloc, ProductListState>(
        builder: (context, state) {
          if (state is ProductListLoadedState) {
            return SizedBox(
              height: 270.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.productList.length,
                padding: EdgeInsets.only(left: 8.w, right: 8.w),
                itemBuilder: (context, int index) {
                  return ItemProduct(
                    product: state.productList[index],
                  );
                },
              ),
            );
          } else {
            return SizedBox(
              height: 0,
            );
          }
        },
      ),
    );
  }
}
