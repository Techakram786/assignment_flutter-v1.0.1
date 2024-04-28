import '../../../core/app_export.dart';

/// This class is used in the [listsponsored_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListsponsoredItemModel {
  ListsponsoredItemModel({this.sponsored, this.id}) {
    sponsored = sponsored ?? Rx("Sponsored");
    id = id ?? Rx("");
  }

  Rx<String>? sponsored;

  Rx<String>? id;
}
