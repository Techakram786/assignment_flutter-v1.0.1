import '../../../core/app_export.dart';

/// This class is used in the [gridcolumn_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GridcolumnItemModel {
  GridcolumnItemModel({this.image, this.title, this.id}) {
    image = image ?? Rx(ImageConstant.imgGroup28);
    title = title ?? Rx("Scan & Pay");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? id;
}
