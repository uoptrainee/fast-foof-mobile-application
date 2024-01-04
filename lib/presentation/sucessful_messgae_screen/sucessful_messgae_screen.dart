import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';

class SucessfulMessgaeScreen extends StatelessWidget {
  const SucessfulMessgaeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 63.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(bottom: 13.v),
                                decoration: BoxDecoration(
                                    color: appTheme.indigo30001,
                                    borderRadius: BorderRadius.circular(12.h))),
                            Container(
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(left: 67.h, top: 13.v),
                                decoration: BoxDecoration(
                                    color: appTheme.indigo30002,
                                    borderRadius: BorderRadius.circular(12.h)))
                          ]),
                      SizedBox(height: 38.v),
                      _buildRighRemovebgPreview(context),
                      SizedBox(height: 29.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 231.h,
                              margin: EdgeInsets.only(right: 51.h),
                              child: Text(
                                  "Your order hasbeen \nsucessfully placed",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style:
                                      CustomTextStyles.headlineSmallBlack900))),
                      SizedBox(height: 25.v),
                      Text("Enjoy your foods your Taste",
                          style: CustomTextStyles.bodyLargeBlack900),
                      SizedBox(height: 46.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtMakeOreders(context);
                          },
                          child: SizedBox(
                              width: 125.h,
                              child: Text("Make oreders",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .headlineLargeIndigoA700)))
                    ]))));
  }

  /// Section Widget
  Widget _buildRighRemovebgPreview(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 290.v,
            width: 336.h,
            child: Stack(alignment: Alignment.topLeft, children: [
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 278.v,
                      width: 311.h,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRighRemovebgPreview,
                            height: 278.v,
                            width: 311.h,
                            alignment: Alignment.center),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(left: 111.h, top: 1.v),
                                decoration: BoxDecoration(
                                    color: appTheme.indigo30002,
                                    borderRadius: BorderRadius.circular(12.h))))
                      ]))),
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                      decoration: BoxDecoration(
                          color: appTheme.indigo30002,
                          borderRadius: BorderRadius.circular(12.h)))),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                      margin: EdgeInsets.only(left: 12.h),
                      decoration: BoxDecoration(
                          color: appTheme.blueA200,
                          borderRadius: BorderRadius.circular(12.h)))),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                      margin: EdgeInsets.only(top: 13.v),
                      decoration: BoxDecoration(
                          color: appTheme.indigo30002,
                          borderRadius: BorderRadius.circular(12.h))))
            ])));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapTxtMakeOreders(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
