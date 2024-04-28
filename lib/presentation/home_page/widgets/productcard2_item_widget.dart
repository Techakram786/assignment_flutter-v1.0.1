import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/productcard2_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Productcard2ItemWidget extends StatelessWidget {
  Productcard2ItemWidget(this.productcard2ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Productcard2ItemModel productcard2ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 58.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: productcard2ItemModelObj.productImage!.value,
              height: 61.v,
              width: 43.h,
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 47.h,
            child: Obx(
              () => Text(
                productcard2ItemModelObj.productName!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.poppinsBlack900.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Obx(
            () => CustomImageView(
              imagePath: productcard2ItemModelObj.productImage1!.value,
              height: 5.v,
              width: 39.h,
            ),
          ),
          SizedBox(height: 1.v),
          Obx(
            () => Text(
              productcard2ItemModelObj.productPrice!.value,
              style: CustomTextStyles.labelSmallRed900,
            ),
          )
        ],
      ),
    );
  }
}
