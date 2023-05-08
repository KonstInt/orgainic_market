import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organic_market/utils/constants.dart';

class ItemsCounter extends StatefulWidget {
  final double itemStep;
  int quantity;
  final String measureType;
  final Function callbackChangeCounter;
  ItemsCounter(
      {super.key,
      required this.itemStep,
      required this.quantity,
      required this.measureType,
      required this.callbackChangeCounter});

  @override
  State<ItemsCounter> createState() => _ItemsCounterState();
}

class _ItemsCounterState extends State<ItemsCounter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 94.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50.r),
        ),
        color: MyColors.kGreyChipBackground,
      ),
      child: InkWell(
        focusColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Material(
              color: Colors.transparent,
              shape: CircleBorder(),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (widget.quantity > 1) {
                      widget.quantity--;
                      widget.callbackChangeCounter(widget.quantity);
                    }
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 12.r, bottom: 12.r, right: 10.r, left: 10.r),
                  child: SvgPicture.asset('assets/icons/other/minus.svg'),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  (widget.quantity.toDouble() * widget.itemStep)
                          .toStringAsFixed(1) +
                      widget.measureType,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 11.sp),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              shape: CircleBorder(),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {
                  setState(() {
                    widget.quantity++;
                    widget.callbackChangeCounter(widget.quantity);
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 10.r, bottom: 10.r, right: 10.r, left: 10.r),
                  child: SvgPicture.asset('assets/icons/other/plus.svg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
