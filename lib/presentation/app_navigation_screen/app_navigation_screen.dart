import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "accounts",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "accounts One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sucessful messgae",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sucessfulMessgaeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "payment method - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentMethodContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "cart",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "onboard",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "add details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "payments",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.paymentsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
