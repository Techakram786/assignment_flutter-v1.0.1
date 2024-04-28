import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../controller/home_controller.dart';
import '../models/gridcolumn_item_model.dart';

class GridcolumnItemWidget extends StatelessWidget {
  GridcolumnItemWidget(this.gridcolumnItemModelObj, {Key? key})
      : super(key: key,);

  GridcolumnItemModel gridcolumnItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Obx(
            () => CustomIconButton(
              height: 27.adaptSize,
              width: 27.adaptSize,
              padding: EdgeInsets.all(5.h),
              child: CustomImageView(imagePath: gridcolumnItemModelObj.image!.value,
              ),
            ),
          ),
        ),
        SizedBox(height: 1.v),
        Obx(
          () => Text(gridcolumnItemModelObj.title!.value,
            style: CustomTextStyles.bodySmall10,
          ),
        ),

      ],
    );
  }
}
