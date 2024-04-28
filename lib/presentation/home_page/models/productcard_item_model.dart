import '../../../core/app_export.dart';

/// This class is used in the [productcard_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProductcardItemModel {
  ProductcardItemModel(
      {this.image,
      this.title,
      this.price,
      this.discountedPrice,
      this.discountPercent,
      this.addToCartButton,
      this.id}) {
    image = image ?? Rx(ImageConstant.imgRectangle15);
    title = title ?? Rx("Charles Keith Tote Bag");
    price = price ?? Rx("₹1,49.00");
    discountedPrice = discountedPrice ?? Rx("₹4,63.00");
    discountPercent = discountPercent ?? Rx("69% off");
    addToCartButton = addToCartButton ?? Rx("Add to cart");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? title;

  Rx<String>? price;

  Rx<String>? discountedPrice;

  Rx<String>? discountPercent;

  Rx<String>? addToCartButton;

  Rx<String>? id;
}
