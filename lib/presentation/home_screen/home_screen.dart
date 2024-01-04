import '../home_screen/widgets/menu_item_widget.dart';
import '../home_screen/widgets/ninety_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';
import 'package:trainee_s_application2/presentation/payment_method_page/payment_method_page.dart';
import 'package:trainee_s_application2/widgets/custom_bottom_app_bar.dart';
import 'package:trainee_s_application2/widgets/custom_floating_button.dart';
import 'package:trainee_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 34.v),
                      _buildMenuRow(context),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h, right: 33.h),
                          child: CustomSearchView(
                              controller: searchController,
                              hintText: "search")),
                      SizedBox(height: 27.v),
                      _buildAllTextStack(context),
                      SizedBox(height: 27.v),
                      _buildPopularStack(context)
                    ])),
            bottomNavigationBar: _buildMenuBottomAppBar(context),
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
  Widget _buildMenuRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 17.h, right: 30.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 10.v, bottom: 22.v),
                  child: Text("Menu",
                      style: CustomTextStyles.headlineLargeBlue600)),
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse1,
                  height: 72.adaptSize,
                  width: 72.adaptSize,
                  radius: BorderRadius.circular(36.h))
            ]));
  }

  /// Section Widget
  Widget _buildPromotionColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text("Promotion",
                          style: CustomTextStyles.headlineLargeBlue600)),
                  SizedBox(height: 13.v),
                  SizedBox(
                      height: 138.v,
                      width: 332.h,
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.h, vertical: 21.v),
                                decoration: AppDecoration.fillIndigo300
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 74.v),
                                      Text("Today offer",
                                          style: theme.textTheme.bodyLarge)
                                    ]))),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 8.h, bottom: 35.v),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Free Box of Fries",
                                          style: CustomTextStyles
                                              .headlineSmallOnPrimaryContainer),
                                      SizedBox(height: 6.v),
                                      Text("On all orders above 150",
                                          style: theme.textTheme.bodyLarge)
                                    ])))
                      ]))
                ])));
  }

  /// Section Widget
  Widget _buildAllTextStack(BuildContext context) {
    return Container(
        height: 317.v,
        width: 377.h,
        margin: EdgeInsets.only(left: 16.h),
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  height: 317.v,
                  child: ListView.separated(
                      padding: EdgeInsets.only(bottom: 33.v),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 19.h);
                      },
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return NinetyItemWidget();
                      }))),
          _buildPromotionColumn(context)
        ]));
  }

  /// Section Widget
  Widget _buildPopularStack(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 235.v,
            width: 371.h,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 13.h),
                      child: Text("Popular",
                          style: CustomTextStyles.headlineLargeBlue600))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                      height: 235.v,
                      child: ListView.separated(
                          padding: EdgeInsets.only(top: 34.v),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 47.h);
                          },
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return MenuItemWidget(onTapImgMenuImage1: () {
                              onTapImgMenuImage1(context);
                            });
                          })))
            ])));
  }

  /// Section Widget
  Widget _buildMenuBottomAppBar(BuildContext context) {
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

  /// Navigates to the detailsScreen when the action is triggered.
  onTapImgMenuImage1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailsScreen);
  }
}
