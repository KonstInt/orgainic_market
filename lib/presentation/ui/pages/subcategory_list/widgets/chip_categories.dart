import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../utils/constants.dart';


class ChipCategories extends StatefulWidget {
  const ChipCategories({super.key});

  @override
  State<ChipCategories> createState() => _ChipCategoriesState();
}

class _ChipCategoriesState extends State<ChipCategories> {
  final List<String> _filters = <String>[];
  final List<String> _filtersCategories = <String>[
    'Чай черный',
    'Чай зеленый',
    'Чай улун',
    'Чай красный'
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.h),
        child: Wrap(
          spacing: 10.0.w,
          children: _filtersCategories.map(
            (String filter) {
              return FilterChip(
                backgroundColor: Colors.transparent,
                shape: StadiumBorder(
                  side: BorderSide(
                    color: _filters.contains(filter)
                        ? Theme.of(context).colorScheme.primary
                        : MyColors.kLightGreyColor,
                  ),
                ),
                selectedColor: MyColors.kGreenColor,
                checkmarkColor:
                    Theme.of(context).colorScheme.onBackground,
                label: Text(
                  filter,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 13.sp,
                        color: _filters.contains(filter)
                            ? MyColors.kWhiteColor
                            : MyColors.kBlackColor,
                      ),
                ),
                selected: _filters.contains(filter),
                onSelected: (bool value) {
                  setState(
                    () {
                      if (value) {
                        if (!_filters.contains(filter)) {
                          _filters.add(filter);
                        }
                      } else {
                        _filters.removeWhere(
                          (String name) {
                            return name == filter;
                          },
                        );
                      }
                    },
                  );
                },
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}