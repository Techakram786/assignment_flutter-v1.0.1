import '../../../core/app_export.dart';

/// This class is used in the [productcard1_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Productcard1ItemModel {
  Productcard1ItemModel(
      {this.image, this.title, this.price, this.buttonText, this.id}) {
    image = image ?? Rx(ImageConstant.imgImage32);
    title = title ?? Rx("Home Audio");
    price = price ?? Rx("\$114.00");
    buttonText = buttonText ?? Rx("Add to cart");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? price;

  Rx<String>? buttonText;

  Rx<String>? id;
}
