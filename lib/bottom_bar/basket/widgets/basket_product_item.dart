import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bottom_bar/basket/widgets/items_counter.dart';
import 'package:organic_market/bottom_bar/basket/widgets/price_widget.dart';

import '../../../utils/constants.dart';

class BasketProductItem extends StatefulWidget {
  bool isDeletedMode;
  final int index;
  final int itemId;
  int quantity;
  final Function callbackDeletedIndex;
  BasketProductItem(
      {super.key,
      required this.isDeletedMode,
      required this.index,
      required this.itemId,
      required this.quantity,
      required this.callbackDeletedIndex});
  @override
  State<BasketProductItem> createState() => _BasketProductItemState();
}

class _BasketProductItemState extends State<BasketProductItem> {
  bool checkTrigger = false;
  void callbackQuantity(int quantity){
    setState(() {
      widget.quantity = quantity;
    });
 
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: MyColors.kGreyChipBackground,
      //hoverColor: Colors.red,
      highlightColor: Theme.of(context).colorScheme.background,
      onTap: () {},
      child: SizedBox(
        height: 70.h,
        width: double.infinity,
        child: Row(
          children: [
            if(widget.isDeletedMode)
            Transform.scale(
              scale: 1.2,
              child: Checkbox(
                value: checkTrigger,
                onChanged: (_) {
                  setState(() {
                    checkTrigger = !checkTrigger;

                    widget.callbackDeletedIndex(widget.index, checkTrigger);
                  });
                },
                activeColor: MyColors.kRedColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.r)),
              ),
            ),
            SizedBox(
              width: 70.r,
              height: 70.r,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset(MyAssets.kMolokoImage),
                ),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'УГЛЕЧЕ ПОЛЕ Стейк Флэнк (Ангус) охл скин',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  Row(
                    children: [
                     PriceWidget(
                        price: widget.quantity * 1900,
                        isSale: true,
                        newPrice: widget.quantity * 1000,
                      ),
                      const Spacer(),
                      ItemsCounter(
                        measureType: "kg",
                        itemStep: 0.7,
                        quantity: widget.quantity,
                        callbackChangeCounter: callbackQuantity,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
