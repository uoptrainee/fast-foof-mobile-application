import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';
import 'package:trainee_s_application2/presentation/payment_method_page/payment_method_page.dart';
import 'package:trainee_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:trainee_s_application2/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class PaymentMethodContainerScreen extends StatelessWidget {
  PaymentMethodContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.paymentMethodPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomAppBar(context),
            floatingActionButton: CustomFloatingButton(
                height: 62,
                width: 64,
                backgroundColor: theme.colorScheme.primary.withOpacity(1),
                child: CustomImageView(
                    imagePath: ImageConstant.imgHome,
                    height: 31.0.v,
                    width: 32.0.h)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Rewind:
        return AppRoutes.paymentMethodPage;
      case BottomBarEnum.Favorite:
        return "/";
      case BottomBarEnum.Addshoppingcart:
        return "/";
      case BottomBarEnum.Person:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.paymentMethodPage:
        return PaymentMethodPage();
      default:
        return DefaultWidget();
    }
  }
}
