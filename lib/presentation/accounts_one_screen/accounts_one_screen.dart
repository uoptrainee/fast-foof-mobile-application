import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';
import 'package:trainee_s_application2/presentation/payment_method_page/payment_method_page.dart';
import 'package:trainee_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:trainee_s_application2/widgets/custom_floating_button.dart';

// ignore_for_file: must_be_immutable
class AccountsOneScreen extends StatelessWidget {
  AccountsOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 293.v,
                          width: 391.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    margin: EdgeInsets.only(bottom: 74.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 38.h, vertical: 50.v),
                                    decoration: AppDecoration.fillBlue,
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArrowLeft,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              margin: EdgeInsets.only(
                                                  top: 4.v, bottom: 93.v),
                                              onTap: () {
                                                onTapImgArrowLeft(context);
                                              }),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 61.h, bottom: 78.v),
                                              child: Text("My Profile",
                                                  style: theme
                                                      .textTheme.headlineLarge))
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse3,
                                height: 148.v,
                                width: 142.h,
                                radius: BorderRadius.circular(74.h),
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(left: 18.h))
                          ])),
                      SizedBox(height: 11.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Text("Kishok kumar",
                              style: CustomTextStyles.titleLargeBlue900)),
                      SizedBox(height: 2.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtEditProfile(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 28.h),
                              child: Text("Edit Profile",
                                  style: theme.textTheme.titleLarge))),
                      SizedBox(height: 49.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Text("My Orders",
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .headlineSmallBlue900SemiBold)),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h),
                          child: Text("My Address",
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .headlineSmallBlue900SemiBold)),
                      SizedBox(height: 28.v),
                      Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Text("Payments",
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .headlineSmallBlue900SemiBold)),
                      SizedBox(height: 55.v),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtSignOut(context);
                              },
                              child: Text("Sign out",
                                  style: CustomTextStyles
                                      .headlineLargeIndigoA700))),
                      SizedBox(height: 55.v)
                    ])),
            bottomNavigationBar: _buildBottomAppBarSection(context),
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
  Widget _buildBottomAppBarSection(BuildContext context) {
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

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the accountsScreen when the action is triggered.
  onTapTxtEditProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountsScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtSignOut(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
