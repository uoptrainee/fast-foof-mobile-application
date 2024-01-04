import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';
import 'package:trainee_s_application2/widgets/custom_elevated_button.dart';
import 'package:trainee_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PaymentsScreen extends StatelessWidget {
  PaymentsScreen({Key? key}) : super(key: key);

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 18.h, top: 176.v, right: 18.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Payments",
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.headlineLarge_1),
                      SizedBox(height: 15.v),
                      _buildPaymentDetails(context),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h, right: 78.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text("Exp date",
                                        style: theme.textTheme.titleLarge)),
                                Padding(
                                    padding: EdgeInsets.only(bottom: 2.v),
                                    child: Text("Div",
                                        style: theme.textTheme.titleLarge))
                              ])),
                      SizedBox(height: 27.v),
                      _buildOrderDetails(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildPaymentButton(context)));
  }

  /// Section Widget
  Widget _buildPaymentDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Card Number", style: theme.textTheme.titleLarge),
          SizedBox(height: 8.v),
          CustomTextFormField(
              controller: cardNumberController,
              hintText: "1234-1234-1234-1234",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30.h, vertical: 16.v),
              borderDecoration: TextFormFieldStyleHelper.fillPrimaryTL30)
        ]));
  }

  /// Section Widget
  Widget _buildOrderDetails(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 3.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(right: 16.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 23.h, vertical: 12.v),
                  decoration: AppDecoration.fillPrimary
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder28),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 5.v),
                            child: Text("12/12",
                                style: CustomTextStyles.titleLargeGray400))
                      ]))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: CustomTextFormField(
                      controller: amountController,
                      hintText: "000",
                      textInputAction: TextInputAction.done,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 15.v),
                      borderDecoration:
                          TextFormFieldStyleHelper.fillPrimaryTL30)))
        ]));
  }

  /// Section Widget
  Widget _buildPaymentButton(BuildContext context) {
    return CustomElevatedButton(
        height: 57.v,
        text: "Payment",
        margin: EdgeInsets.only(left: 26.h, right: 26.h, bottom: 39.v),
        buttonStyle: CustomButtonStyles.fillIndigo,
        onPressed: () {
          onTapPaymentButton(context);
        });
  }

  /// Navigates to the sucessfulMessgaeScreen when the action is triggered.
  onTapPaymentButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sucessfulMessgaeScreen);
  }
}
