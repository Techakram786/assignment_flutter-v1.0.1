import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'gridcolumn_item_model.dart';
import 'listsponsored_item_model.dart';
import 'productcard1_item_model.dart';
import 'productcard2_item_model.dart';
import 'productcard_item_model.dart';
import 'userprofile_item_model.dart';
class HomeModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Delhi 110025 ",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Delhi Okhla",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Mumbai 1234",
    )
  ]);

  Rx<List<GridcolumnItemModel>> gridcolumnItemList = Rx([
    GridcolumnItemModel(image: ImageConstant.imgGroup28.obs, title: "Scan & Pay".obs),
    GridcolumnItemModel(image: ImageConstant.imgRectangle8.obs, title: "Fashion".obs),
    GridcolumnItemModel(image: ImageConstant.imgRectangle8.obs, title: "Electronic".obs),
    GridcolumnItemModel(image: ImageConstant.imgRectangle8.obs, title: "Mobile".obs),
    GridcolumnItemModel(image: ImageConstant.imgRectangle8.obs, title: "Beauty".obs),
    GridcolumnItemModel(image: ImageConstant.imgRectangle8.obs, title: "Appliance".obs),
    GridcolumnItemModel(image: ImageConstant.imgRectangle8.obs, title: "Furniture".obs),
    GridcolumnItemModel(image: ImageConstant.imgRectangle8.obs, title: "Books".obs),
    GridcolumnItemModel(image: ImageConstant.imgRectangle8.obs, title: "Fashion".obs),
    GridcolumnItemModel(image: ImageConstant.imgRectangle8.obs, title: "Mobile".obs),
   /* GridcolumnItemModel(image: ImageConstant.imgRectangle8.obs, title: "Electronic".obs),
    GridcolumnItemModel(image: ImageConstant.imgRectangle8.obs, title: "Mobile".obs),
    GridcolumnItemModel(image: ImageConstant.imgRectangle8.obs, title: "Beauty".obs),*/
   /* GridcolumnItemModel(scanpay: "Fashion".obs),
    GridcolumnItemModel(scanpay: "Electronic".obs),
    GridcolumnItemModel(scanpay: "Mobile".obs),
    GridcolumnItemModel(scanpay: "Beauty".obs),
    GridcolumnItemModel(scanpay: "Appliance".obs),
    GridcolumnItemModel(scanpay: "Furniture".obs),
    GridcolumnItemModel(scanpay: "Books, Toys".obs),
    GridcolumnItemModel(scanpay: "Mobile".obs)*/
  ]);

  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        fromImage: ImageConstant.imgRectangle7.obs,
        fromText: "From ".obs,
        fiveHundredText: "500".obs,
        electronicsText: "Electronics".obs),
    UserprofileItemModel(
        fromImage: ImageConstant.imgRectangle8.obs,
        fromText: "From".obs,
        fiveHundredText: "250".obs,
        electronicsText: "Perfume".obs),
    UserprofileItemModel(
        fromImage: ImageConstant.imgRectangle8.obs,
        fromText: "From".obs,
        fiveHundredText: "250".obs,
        electronicsText: "Perfume".obs),
    UserprofileItemModel(
        fromImage: ImageConstant.imgRectangle8.obs,
        fromText: "From".obs,
        fiveHundredText: "250".obs,
        electronicsText: "Perfume".obs),
    UserprofileItemModel(
        fromImage: ImageConstant.imgRectangle8.obs,
        fromText: "From".obs,
        fiveHundredText: "250".obs,
        electronicsText: "Perfume".obs),
    UserprofileItemModel(
        fromImage: ImageConstant.imgRectangle8.obs,
        fromText: "From".obs,
        fiveHundredText: "250".obs,
        electronicsText: "Perfume".obs),
    UserprofileItemModel(fromImage: ImageConstant.imgRectangle9.obs),
    UserprofileItemModel(fromImage: ImageConstant.imgRectangle10.obs)
  ]);

  Rx<List<ProductcardItemModel>> productcardItemList = Rx([
    ProductcardItemModel(
        image: ImageConstant.imgRectangle15.obs,
        title: "Charles Keith Tote Bag".obs,
        price: "₹1,49.00".obs,
        discountedPrice: "₹4,63.00".obs,
        discountPercent: "69% off".obs,
        addToCartButton: "Add to cart".obs),
    ProductcardItemModel(
        image: ImageConstant.imgRectangle16.obs,
        title: "Leather Strap watch for Men".obs,
        price: "₹2,499".obs,
        discountedPrice: "₹2,395".obs,
        discountPercent: "69% off".obs),
    ProductcardItemModel(
        image: ImageConstant.imgRectangle17.obs,
        title: "Queen Magnet watch girls".obs),
    ProductcardItemModel(
        image: ImageConstant.imgRectangle18.obs,
        title: "Gorgeous Stylish Handbag".obs,
        addToCartButton: "Add to cart".obs),
    ProductcardItemModel(
        image: ImageConstant.imgRectangle19.obs,
        title: "PU leather men's wallet".obs,
        addToCartButton: "Add to cart".obs),
    ProductcardItemModel(
        image: ImageConstant.imgRectangle20.obs,
        title: "Aganta Talking Cactus Toy".obs,
        price: "₹599".obs,
        discountedPrice: "₹1,700".obs,
        discountPercent: "65% off".obs,
        addToCartButton: "Add to cart".obs)
  ]);

  Rx<List<ListsponsoredItemModel>> listsponsoredItemList = Rx([ListsponsoredItemModel(sponsored: "Sponsored".obs)]);

  Rx<List<Productcard1ItemModel>> productcard1ItemList = Rx([
    Productcard1ItemModel(
        image: ImageConstant.imgImage32.obs,
        title: "Home Audio".obs,
        price: "\$114.00".obs,
        buttonText: "Add to cart".obs),
    Productcard1ItemModel(
        image: ImageConstant.imgImage33.obs,
        title: "Computer Accessories".obs,
        price: "\$114.00".obs,
        buttonText: "Add to cart".obs),
    Productcard1ItemModel(
        image: ImageConstant.imgImage33.obs,
        title: "Computer Accessories".obs,
        price: "\$114.00".obs,
        buttonText: "Add to cart".obs),
    Productcard1ItemModel(
        image: ImageConstant.imgImage33.obs,
        title: "Computer Accessories".obs,
        price: "\$114.00".obs,
        buttonText: "Add to cart".obs),
    Productcard1ItemModel(
        image: ImageConstant.imgImage33.obs,
        title: "Computer Accessories".obs,
        price: "\$114.00".obs,
        buttonText: "Add to cart".obs),
    Productcard1ItemModel(
        image: ImageConstant.imgImage33.obs,
        title: "Computer Accessories".obs,
        price: "\$114.00".obs,
        buttonText: "Add to cart".obs),
  ]);

  Rx<List<Productcard2ItemModel>> productcard2ItemList = Rx([
    Productcard2ItemModel(
        productImage: ImageConstant.imgImage58.obs,
        productName: "Apple iPhone 12 (64GB, Purple)".obs,
        productImage1: ImageConstant.imgGroup26.obs,
        productPrice: "\$93.00".obs),
    Productcard2ItemModel(
        productImage: ImageConstant.imgImage57.obs,
        productName: "Wireless Earbuds Bluetoth Earbuds".obs,
        productImage1: ImageConstant.imgGroup26.obs,
        productPrice: "\$100.00".obs),
    Productcard2ItemModel(
        productImage: ImageConstant.imgImage59.obs,
        productName: "Shauryam Smart Watch".obs,
        productImage1: ImageConstant.imgGroup26.obs,
        productPrice: "\$53.00".obs)
  ]);
}
