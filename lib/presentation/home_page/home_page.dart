import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/home_controller.dart';
import 'models/gridcolumn_item_model.dart';
import 'models/home_model.dart';
import 'models/listsponsored_item_model.dart';
import 'models/productcard1_item_model.dart';
import 'models/productcard2_item_model.dart';
import 'models/productcard_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/gridcolumn_item_widget.dart';
import 'widgets/listsponsored_item_widget.dart';
import 'widgets/productcard1_item_widget.dart';
import 'widgets/productcard2_item_widget.dart';
import 'widgets/productcard_item_widget.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 4.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildRowDeliveringTo(),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      right: 16.h,
                    ),
                    child: CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_search_here".tr,
                    ),
                  ),
                  SizedBox(height: 11.v),
                  _buildStackSplotch(),
                  SizedBox(height: 13.v),
                  _buildGridColumn(),
                  SizedBox(height: 15.v),
                  _buildColumnFromText(),
                  SizedBox(height: 35.v),
                  _buildColumnRecentView(),
                  SizedBox(height: 28.v),
                  _buildListSponsored(),
                  SizedBox(height: 35.v),
                  _buildColumnElectronics(),
                  SizedBox(height: 22.v),
                  Divider(
                    indent: 15.h,
                    endIndent: 15.h,
                  ),
                  SizedBox(height: 10.v),
                  _buildColumnLoveApple()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgKrizaar21,
      ),
    );
  }

  /// Section Widget
  Widget _buildRowDeliveringTo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      decoration: AppDecoration.fillRed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: CustomDropDown(
              hintText: "msg_delivering_to_noida".tr,
              items: controller.homeModelObj.value.dropdownItemList!.value,
              prefix: Container(
                margin: EdgeInsets.only(
                  left: 2.h,
                  right: 7.h,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgMapmarkeralt,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 33.v,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgShoppingCart,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 5.v,
              bottom: 8.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHeart,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.fromLTRB(14.h, 5.v, 7.h, 8.v),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStackSplotch() {
    return SizedBox(
      height: 142.v,
      width: 328.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSplotch,
            height: 15.adaptSize,
            width: 15.adaptSize,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(
              right: 128.h,
              bottom: 12.v,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              decoration: AppDecoration.fillRed100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSplotchDeepOrange50,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    margin: EdgeInsets.only(
                      top: 104.v,
                      bottom: 23.v,
                    ),
                  ),
                  Container(
                    height: 141.v,
                    width: 239.h,
                    margin: EdgeInsets.only(
                      left: 26.h,
                      top: 1.v,
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 22.v),
                            child: Text(
                              "lbl_fashion".tr,
                              style: theme.textTheme.displayMedium,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSplotch,
                          height: 15.adaptSize,
                          width: 15.adaptSize,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: 44.h,
                            top: 5.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage2,
                          height: 141.v,
                          width: 77.h,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 72.h),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 57.h,
                            margin: EdgeInsets.only(bottom: 8.v),
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.fillRed.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder3,
                            ),
                            child: Text(
                              "lbl_shop_now".tr,
                              style: CustomTextStyles.labelSmallInter,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSplotch,
                    height: 15.adaptSize,
                    width: 15.adaptSize,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      top: 14.v,
                      bottom: 113.v,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGridColumn() {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 21.h,
      ),
      child: Obx(
        () => GridView.builder(
          //scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 57.v,
            crossAxisCount: 5,
            mainAxisSpacing: 23.h,
            crossAxisSpacing: 23.h,
          ),
         // physics: NeverScrollableScrollPhysics(),
          itemCount:
              controller.homeModelObj.value.gridcolumnItemList.value.length,
          itemBuilder: (context, index) {
            GridcolumnItemModel model =
                controller.homeModelObj.value.gridcolumnItemList.value[index];
            return GridcolumnItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnFromText() {
    return Container(
      margin: EdgeInsets.only(left: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle6,
            height: 103.v,
            width: 328.h,
          ),
          SizedBox(height: 16.v),
          SizedBox(
            height: 80.v,
            child: Obx(
              () => ListView.separated(
                padding: EdgeInsets.only(right: 16.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 13.h,
                  );
                },
                itemCount: controller
                    .homeModelObj.value.userprofileItemList.value.length,
                itemBuilder: (context, index) {
                  UserprofileItemModel model = controller
                      .homeModelObj.value.userprofileItemList.value[index];
                  return UserprofileItemWidget(
                    model,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnRecentView() {
    return Container(
      margin: EdgeInsets.only(left: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "lbl_recent_view".tr,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: Obx(
              () => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 154.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 10.h,
                  crossAxisSpacing: 10.h,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller
                    .homeModelObj.value.productcardItemList.value.length,
                itemBuilder: (context, index) {
                  ProductcardItemModel model = controller
                      .homeModelObj.value.productcardItemList.value[index];
                  return ProductcardItemWidget(
                    model,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListSponsored() {
    return Padding(
      padding: EdgeInsets.only(left: 15.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 7.v,
            );
          },
          itemCount:
              controller.homeModelObj.value.listsponsoredItemList.value.length,
          itemBuilder: (context, index) {
            ListsponsoredItemModel model = controller
                .homeModelObj.value.listsponsoredItemList.value[index];
            return ListsponsoredItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnElectronics() {
    return Container(
      margin: EdgeInsets.only(left: 15.h),
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              right: 15.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_electronics".tr,
                  style: CustomTextStyles.labelLargePoppinsRed900,
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: Text(
                    "lbl_tablets".tr,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                Container(
                  width: 55.h,
                  margin: EdgeInsets.only(left: 6.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.outlineRed.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Text(
                    "lbl_laptop".tr,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    top: 2.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_smartwatch".tr,
                    style: theme.textTheme.labelMedium,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 11.v),
          SizedBox(
            height: 151.v,
            child: Obx(
              () => ListView.separated(
                padding: EdgeInsets.only(right: 15.h),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 30.h,);
                },
                itemCount: controller.homeModelObj.value.productcard1ItemList.value.length,
                itemBuilder: (context, index) {
                  Productcard1ItemModel model = controller.homeModelObj.value.productcard1ItemList.value[index];
                  return Productcard1ItemWidget(
                    model,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnLoveApple() {
    return Padding(
      padding: EdgeInsets.only(left: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "msg_love_apple_think".tr,
              style: CustomTextStyles.labelMediumSemiBold,
            ),
          ),
          Text(
            "msg_get_all_the_gadgets".tr,
            style: CustomTextStyles.bodySmallPoppins,
          ),
          SizedBox(height: 8.v),
          SizedBox(
            height: 117.v,
            child: Obx(
              () => ListView.separated(
                padding: EdgeInsets.only(
                  left: 1.h,
                  right: 16.h,
                ),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 6.h,
                  );
                },
                itemCount: controller
                    .homeModelObj.value.productcard2ItemList.value.length,
                itemBuilder: (context, index) {
                  Productcard2ItemModel model = controller
                      .homeModelObj.value.productcard2ItemList.value[index];
                  return Productcard2ItemWidget(
                    model,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
