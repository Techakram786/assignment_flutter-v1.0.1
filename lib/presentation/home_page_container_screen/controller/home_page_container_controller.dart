import '../../../core/app_export.dart';
import '../models/home_page_container_model.dart';

/// A controller class for the HomePageContainerScreen.
///
/// This class manages the state of the HomePageContainerScreen, including the
/// current homePageContainerModelObj
class HomePageContainerController extends GetxController {
  Rx<HomePageContainerModel> homePageContainerModelObj =
      HomePageContainerModel().obs;
}
