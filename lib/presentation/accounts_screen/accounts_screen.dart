import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';
import 'package:trainee_s_application2/presentation/payment_method_page/payment_method_page.dart';
import 'package:trainee_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:trainee_s_application2/widgets/custom_floating_button.dart';
import 'package:trainee_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AccountsScreen extends StatelessWidget {
  AccountsScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 13.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 6.v),
                      _buildArrowLeftEditProfileImage(context),
                      SizedBox(height: 24.v),
                      _buildNameStack(context),
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: Text("Email",
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.only(left: 19.h, right: 21.h),
                          child: CustomTextFormField(
                              controller: emailController,
                              hintText: "kidhok@123@gmail.com",
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center)),
                      SizedBox(height: 47.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtSave(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 133.h),
                              child: Text("Save",
                                  style: CustomTextStyles
                                      .headlineLargeIndigoA700))),
                      SizedBox(height: 42.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgFastRemovebgPreview,
                          height: 191.v,
                          width: 300.h,
                          alignment: Alignment.center)
                    ])),
            bottomNavigationBar:
                _buildRewindFavoriteFabAddShoppingCartPerson(context),
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
  Widget _buildArrowLeftEditProfileImage(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 39.v, bottom: 89.v),
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 31.v, bottom: 77.v),
              child:
                  Text("Edit Profile", style: theme.textTheme.headlineLarge)),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse3,
              height: 148.v,
              width: 142.h,
              radius: BorderRadius.circular(74.h),
              margin: EdgeInsets.only(left: 27.h))
        ]));
  }

  /// Section Widget
  Widget _buildNameStack(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Name", style: theme.textTheme.headlineLarge),
          SizedBox(height: 16.v),
          SizedBox(
              height: 43.v,
              width: 341.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 50.h),
                        child: Text("Name",
                            style: theme.textTheme.headlineLarge))),
                CustomTextFormField(
                    width: 341.h,
                    controller: nameController,
                    hintText: "Kishok kumar",
                    alignment: Alignment.center)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildRewindFavoriteFabAddShoppingCartPerson(BuildContext context) {
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

  /// Navigates to the accountsOneScreen when the action is triggered.
  onTapTxtSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountsOneScreen);
  }
}
