import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/productcard_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(this.productcardItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: productcardItemModelObj.image!.value,
            height: 91.adaptSize,
            width: 91.adaptSize,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
        ),
        SizedBox(height: 2.v),
        SizedBox(
          width: 86.h,
          child: Obx(
            () => Text(
              productcardItemModelObj.title!.value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmall10.copyWith(
                height: 1.20,
              ),
            ),
          ),
        ),
        SizedBox(height: 3.v),
        Row(
          children: [
            Obx(
              () => Text(
                productcardItemModelObj.price!.value,
                style: theme.textTheme.bodySmall,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Obx(
                () => Text(
                  productcardItemModelObj.discountedPrice!.value,
                  style: CustomTextStyles.bodySmallBluegray10001.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
            ),
            Container(
              height: 9.v,
              width: 28.h,
              margin: EdgeInsets.only(left: 2.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 7.v,
                      width: 28.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray100,
                        borderRadius: BorderRadius.circular(
                          2.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Obx(
                      () => Text(
                        productcardItemModelObj.discountPercent!.value,
                        style: CustomTextStyles.poppinsLightgreen800,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 4.v),
        Container(
          width: 73.h,
          margin: EdgeInsets.only(left: 9.h),
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.fillRed.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder3,
          ),
          child: Obx(
            () => Text(
              productcardItemModelObj.addToCartButton!.value,
              style: theme.textTheme.labelSmall,
            ),
          ),
        )
      ],
    );
  }
}
