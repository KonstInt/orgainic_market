import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../domain/models/cart_model.dart';
import 'basket_product_item.dart';
// ignore: must_be_immutable
class ListBasketItems extends StatefulWidget {
  List<CartProducts> cartProducts;
  bool deletedMode = false;
  ListBasketItems({super.key, required this.deletedMode, required this.cartProducts});
  void setDeleteIndexes(){
    deletedMode = !deletedMode;
    
  }
  @override
  State<ListBasketItems> createState() => _ListBasketItemsState();
}

class _ListBasketItemsState extends State<ListBasketItems> {
  
  List<int> deleteIndexes = [];
  void setDeleteIndexes(int index, bool delete){
      if(delete){
        deleteIndexes.add(index);
      }
      else{
        deleteIndexes.remove(index);
      }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.only(left: 16.w, right: 14.w),
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 3,
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 0.7.h,
          );
        },
        itemBuilder: (context, index) {
          return BasketProductItem(
            isDeletedMode: widget.deletedMode,
            index: index,
            productInCart: widget.cartProducts[index],
            callbackDeletedIndex: setDeleteIndexes,
            );
        });
  }

  
}
