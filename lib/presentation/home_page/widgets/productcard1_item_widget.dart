import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_rating_bar.dart';
import '../controller/home_controller.dart';
import '../models/productcard1_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Productcard1ItemWidget extends StatelessWidget {
  Productcard1ItemWidget(this.productcard1ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Productcard1ItemModel productcard1ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 88.h,
      child: Column(
        children: [
          Container(
            width: 88.h,
            padding: EdgeInsets.symmetric(vertical: 1.v),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                CustomImageView(
                  imagePath: ImageConstant.imgHeartRed900,
                  height: 9.adaptSize,
                  width: 9.adaptSize,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 10.h),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => CustomImageView(
                    imagePath: productcard1ItemModelObj.image!.value,
                    height: 54.v,
                    width: 80.h,
                    alignment: Alignment.centerRight,
                  ),
                ),
                SizedBox(height: 6.v),
                Obx(
                  () => Text(
                    productcard1ItemModelObj.title!.value,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                SizedBox(height: 1.v),
                CustomRatingBar(
                  ignoreGestures: true,
                  initialRating: 5,
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    productcard1ItemModelObj.price!.value,
                    style: CustomTextStyles.labelMediumRed900,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 7.v),
          SizedBox(
            height: 12.v,
            width: 66.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 11.v,
                    width: 66.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillRed.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder3,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgShoppingCart,
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 4.h),
                    child: Obx(
                      () => Text(
                        productcard1ItemModelObj.buttonText!.value,
                        style: CustomTextStyles.bodySmallPoppinsWhiteA700,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
