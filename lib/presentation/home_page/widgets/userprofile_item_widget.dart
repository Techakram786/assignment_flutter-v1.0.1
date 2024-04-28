import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/userprofile_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(this.userprofileItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.v,
      width: 72.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofileItemModelObj.fromImage!.value,
              height: 80.v,
              width: 72.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.deepOrange50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.customBorderBL10,
              ),
              child: Container(
                height: 22.v,
                width: 72.h,
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                decoration: AppDecoration.fillDeepOrange.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL10,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Obx(
                          () => Text(
                            userprofileItemModelObj.fromText!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRupeeSign,
                              height: 7.adaptSize,
                              width: 7.adaptSize,
                              margin: EdgeInsets.only(bottom: 2.v),
                            ),
                            Obx(
                              () => Text(
                                userprofileItemModelObj.fiveHundredText!.value,
                                style: theme.textTheme.bodySmall,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Obx(
                          () => Text(
                            userprofileItemModelObj.electronicsText!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
