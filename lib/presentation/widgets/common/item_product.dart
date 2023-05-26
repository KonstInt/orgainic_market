import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../domain/bloc/bloc_view.dart';
import '../../../domain/models/short_product_model.dart';
import '../../../domain/routes/router.gr.dart';
import '../../../utils/constants.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ItemProduct extends StatelessWidget {
  final ShortProductModel product;
  const ItemProduct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        AutoRouter.of(context).push(ItemRoute(productId: product.productId));
      },
      begin: 1.0,
      end: 0.95,
      child: Container(
        height: 240.h,
        width: 168.w,
        margin: EdgeInsets.only(left: 4.w, right: 4.w, top: 10.h, bottom: 15.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12.r),
          ),
          color: Theme.of(context).colorScheme.onBackground,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow, //New
              blurRadius: 10.0,
              offset: Offset(-3.w, 3.h),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 130.h,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r),
                ),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.network(product.image),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w, top: 5.h),
              child: Text(
                product.title,
                style: Theme.of(context).textTheme.bodyMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w, top: 4.h),
              child: Text(
                
                'за ${product.baseMeasure.toStringAsFixed(1)} ${product.measureType}',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                  child: Text(
                    '${product.price.toStringAsFixed(1)}₽',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 12.w),
                  child: TextButton(
                    onPressed: () {
                       CartBloc cartBloc = context.read<CartBloc>();
                       cartBloc.add(AddToCartEvent(itemId: 1));
                    },
                    child: SvgPicture.asset(
                      MyAssets.kBasketIcon,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
