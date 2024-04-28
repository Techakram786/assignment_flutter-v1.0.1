import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileItemModel {
  UserprofileItemModel(
      {this.fromImage,
      this.fromText,
      this.fiveHundredText,
      this.electronicsText,
      this.id}) {
    fromImage = fromImage ?? Rx(ImageConstant.imgRectangle7);
    fromText = fromText ?? Rx("From ");
    fiveHundredText = fiveHundredText ?? Rx("500");
    electronicsText = electronicsText ?? Rx("Electronics");
    id = id ?? Rx("");
  }

  Rx<String>? fromImage;

  Rx<String>? fromText;

  Rx<String>? fiveHundredText;

  Rx<String>? electronicsText;

  Rx<String>? id;
}
