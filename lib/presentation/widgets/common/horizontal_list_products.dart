import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/bloc/bloc_view.dart';
import '../../../internal/dependencies/repository_module.dart';
import '../shimmer/shimmer_item_product.dart';
import 'item_product.dart';

class HorizontalListProducts extends StatelessWidget {
  const HorizontalListProducts({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductListBloc(repository: RepositoryModule.getRepository())
            ..add(ProductListLoadEvent(listId: 1)),
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
          } else if (state is ProductListLoadingState) {
            return SizedBox(
              height: 270.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                padding: EdgeInsets.only(left: 8.w, right: 8.w),
                itemBuilder: (context, int index) {
                  return const ShimmerItemProduct();
                },
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
