import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/home_controller.dart';
import '../models/listsponsored_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListsponsoredItemWidget extends StatelessWidget {
  ListsponsoredItemWidget(this.listsponsoredItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListsponsoredItemModel listsponsoredItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Text(
        listsponsoredItemModelObj.sponsored!.value,
        style: theme.textTheme.labelLarge,
      ),
    );
  }
}
