import '../details_screen/widgets/createfromframeslider_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trainee_s_application2/core/app_export.dart';
import 'package:trainee_s_application2/widgets/custom_elevated_button.dart';
import 'package:trainee_s_application2/widgets/custom_icon_button.dart';
import 'package:trainee_s_application2/widgets/custom_rating_bar.dart';

// ignore_for_file: must_be_immutable
class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

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
                          height: 471.v,
                          width: 822.h,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                _buildCreateFromFrameSlider(context),
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                        height: 10.v,
                                        margin: EdgeInsets.only(
                                            right: 160.h, bottom: 53.v),
                                        child: AnimatedSmoothIndicator(
                                            activeIndex: sliderIndex,
                                            count: 1,
                                            axisDirection: Axis.horizontal,
                                            effect: ScrollingDotsEffect(
                                                spacing: 7,
                                                activeDotColor:
                                                    appTheme.blue900,
                                                dotColor: appTheme.gray400,
                                                dotHeight: 10.v,
                                                dotWidth: 10.h))))
                              ])),
                      SizedBox(height: 29.v),
                      _buildWeburlRow(context),
                      SizedBox(height: 12.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: 324.h,
                              child: ReadMoreText(
                                  "A hamburger, or simply burger, is a food consisting of fillings usually a patty of ground meat, typically beef placed inside a sliced bun or bread roll.",
                                  trimLines: 4,
                                  colorClickableText: appTheme.blue900,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: "Read more",
                                  moreStyle: CustomTextStyles.bodyLargeBlack900,
                                  lessStyle:
                                      CustomTextStyles.bodyLargeBlack900))),
                      SizedBox(height: 22.v),
                      Padding(
                          padding: EdgeInsets.only(left: 34.h, right: 51.h),
                          child: Row(children: [
                            CustomIconButton(
                                height: 60.adaptSize,
                                width: 60.adaptSize,
                                child: CustomImageView()),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 21.v, bottom: 19.v),
                                child: Text("Delivery Time:",
                                    style: theme.textTheme.titleSmall)),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 19.v),
                                child: Text("30 Mint",
                                    style: theme.textTheme.titleMedium))
                          ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildAddCartColumn(context)));
  }

  /// Section Widget
  Widget _buildCreateFromFrameSlider(BuildContext context) {
    return CarouselSlider.builder(
        options: CarouselOptions(
            height: 471.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              sliderIndex = index;
            }),
        itemCount: 1,
        itemBuilder: (context, index, realIndex) {
          return CreatefromframesliderItemWidget();
        });
  }

  /// Section Widget
  Widget _buildWeburlRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 29.h, right: 25.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 191.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("Mr.Burger",
                                          style: CustomTextStyles
                                              .bodyMediumLight)),
                                  CustomRatingBar(initialRating: 4)
                                ])),
                        SizedBox(height: 8.v),
                        SizedBox(
                            height: 25.v,
                            width: 116.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("Beef Burger",
                                      style: CustomTextStyles.titleLargeBold)),
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 25.v,
                                      width: 116.h,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("Beef Burger",
                                                    style: CustomTextStyles
                                                        .titleLargeBold)),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("Beef Burger",
                                                    style: CustomTextStyles
                                                        .titleLargeBold))
                                          ])))
                            ]))
                      ]),
                  Padding(
                      padding: EdgeInsets.only(top: 14.v, bottom: 9.v),
                      child: Text("10",
                          style: CustomTextStyles.headlineSmallLime900))
                ])));
  }

  /// Section Widget
  Widget _buildAddCartColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 187.h, right: 13.h, bottom: 14.v),
        decoration: AppDecoration.fillSecondaryContainer,
        child: CustomElevatedButton(
            height: 54.v,
            text: " Add Cart",
            buttonStyle: CustomButtonStyles.fillBlue,
            buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer,
            onPressed: () {
              onTapAddCart(context);
            }));
  }

  /// Navigates to the cartScreen when the action is triggered.
  onTapAddCart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartScreen);
  }
}
