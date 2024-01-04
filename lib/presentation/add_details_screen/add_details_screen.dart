import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';
import 'package:trainee_s_application2/presentation/payment_method_page/payment_method_page.dart';
import 'package:trainee_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:trainee_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:trainee_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:trainee_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:trainee_s_application2/widgets/custom_elevated_button.dart';
import 'package:trainee_s_application2/widgets/custom_floating_button.dart';
import 'package:trainee_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddDetailsScreen extends StatelessWidget {
  AddDetailsScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 6.v),
                child: Column(children: [
                  _buildDetailsSection(context),
                  SizedBox(height: 16.v),
                  _buildNameSection(context),
                  SizedBox(height: 9.v),
                  _buildEmailSection(context),
                  SizedBox(height: 11.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("Address",
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.headlineSmallBlue900))),
                  SizedBox(height: 13.v),
                  _buildAddressSection(context),
                  SizedBox(height: 31.v),
                  CustomElevatedButton(
                      height: 46.v,
                      width: 225.h,
                      text: "payment",
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientBlueAToPrimaryDecoration,
                      buttonTextStyle: CustomTextStyles.headlineSmallIndigoA700,
                      onPressed: () {
                        onTapPayment(context);
                      }),
                  SizedBox(height: 56.v)
                ])),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 36.h, top: 19.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Details"));
  }

  /// Section Widget
  Widget _buildDetailsSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Name",
              textAlign: TextAlign.center,
              style: CustomTextStyles.headlineSmallBlue900),
          SizedBox(height: 15.v),
          CustomTextFormField(controller: nameController)
        ]));
  }

  /// Section Widget
  Widget _buildNameSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text("Email",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallBlue900)),
          SizedBox(height: 16.v),
          CustomTextFormField(controller: emailController)
        ]));
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 7.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Text("Phone No",
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallBlue900)),
          SizedBox(height: 15.v),
          CustomTextFormField(
              controller: phoneController,
              textInputAction: TextInputAction.done)
        ]));
  }

  /// Section Widget
  Widget _buildAddressSection(BuildContext context) {
    return SizedBox(
        height: 173.v,
        width: 337.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 171.v,
                  width: 336.h,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(1),
                      borderRadius: BorderRadius.circular(25.h)))),
          CustomImageView(
              imagePath: ImageConstant.imgMap11,
              height: 171.v,
              width: 336.h,
              radius: BorderRadius.circular(25.h),
              alignment: Alignment.center)
        ]));
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the paymentsScreen when the action is triggered.
  onTapPayment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentsScreen);
  }
}
