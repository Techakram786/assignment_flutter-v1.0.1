import '../../../core/app_export.dart';

/// This class is used in the [productcard2_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Productcard2ItemModel {
  Productcard2ItemModel(
      {this.productImage,
      this.productName,
      this.productImage1,
      this.productPrice,
      this.id}) {
    productImage = productImage ?? Rx(ImageConstant.imgImage58);
    productName = productName ?? Rx("Apple iPhone 12 (64GB, Purple)");
    productImage1 = productImage1 ?? Rx(ImageConstant.imgGroup26);
    productPrice = productPrice ?? Rx("\$93.00");
    id = id ?? Rx("");
  }

  Rx<String>? productImage;

  Rx<String>? productName;

  Rx<String>? productImage1;

  Rx<String>? productPrice;

  Rx<String>? id;
}
