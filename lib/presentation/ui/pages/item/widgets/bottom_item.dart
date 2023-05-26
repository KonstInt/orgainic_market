import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../domain/bloc/bloc_view.dart';
import '../../../../../utils/constants.dart';
import 'price_bottom_item.dart';

class BottomItem extends StatelessWidget {
  final int productId;
  final bool isSale;
  final String measureType;
  final double mPrice;
  final int? sale;

  const BottomItem({
    super.key, 
    required this.productId, 
    required this.measureType,
    required this.isSale,
    required this.mPrice,
    this.sale = 0
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0.w),
          child: PriceBottomItemWidget(
            price: mPrice,
            isSale: isSale,
            newPrice: mPrice - mPrice*sale!/100,
            measureType: measureType,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 36.h, top: 13.5.h, right: 8.w),
          child: TextButton(
            onPressed: () {
              CartBloc cartBloc = context.read<CartBloc>();
                       cartBloc.add(AddToCartEvent(itemId: 1));
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 7.h),
              child: Row(
                children: [
                  SvgPicture.asset(
                    MyAssets.kBasketIcon,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'В корзину',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
