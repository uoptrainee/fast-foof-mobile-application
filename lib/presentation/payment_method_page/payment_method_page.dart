import '../payment_method_page/widgets/paymentsummary_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';
import 'package:trainee_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:trainee_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:trainee_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:trainee_s_application2/widgets/custom_elevated_button.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: Column(children: [
                  SizedBox(height: 13.v),
                  _buildPaymentSummary(context),
                  SizedBox(height: 13.v),
                  _buildTwentySix(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 36.h, top: 16.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title:
            AppbarTitle(text: "Payment", margin: EdgeInsets.only(left: 84.h)));
  }

  /// Section Widget
  Widget _buildPaymentSummary(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return PaymentsummaryItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 9.h, right: 12.h),
        padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 19.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 53.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Selected",
                            style: CustomTextStyles.bodyMediumLight),
                        Text("4", style: theme.textTheme.bodyMedium)
                      ])),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(right: 41.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Amount", style: theme.textTheme.bodyMedium),
                        Text(" 40", style: theme.textTheme.bodyMedium)
                      ])),
              SizedBox(height: 4.v),
              Padding(
                  padding: EdgeInsets.only(right: 46.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text("Delivery",
                                style: theme.textTheme.bodyMedium)),
                        Text(" 5", style: theme.textTheme.bodyMedium)
                      ])),
              SizedBox(height: 6.v),
              Padding(
                  padding: EdgeInsets.only(right: 40.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 5.v),
                            child: Text("Total",
                                style: theme.textTheme.titleSmall)),
                        Padding(
                            padding: EdgeInsets.only(bottom: 5.v),
                            child: Text(" 45",
                                style:
                                    CustomTextStyles.titleSmallErrorContainer))
                      ])),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                  height: 46.v,
                  text: "Pay Now",
                  margin: EdgeInsets.only(left: 22.h, right: 31.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientBlueAToPrimaryDecoration,
                  buttonTextStyle: CustomTextStyles.headlineSmallIndigoA700,
                  onPressed: () {
                    onTapPayNow(context);
                  }),
              SizedBox(height: 4.v)
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the addDetailsScreen when the action is triggered.
  onTapPayNow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addDetailsScreen);
  }
}
