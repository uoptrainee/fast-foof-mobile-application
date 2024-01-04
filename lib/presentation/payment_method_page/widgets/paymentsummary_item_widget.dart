import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class PaymentsummaryItemWidget extends StatelessWidget {
  const PaymentsummaryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.gradientBlueGrayToOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPaypalRemovebgPreview,
            height: 60.adaptSize,
            width: 60.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 4.v,
            ),
          ),
          Spacer(
            flex: 21,
          ),
          Padding(
            padding: EdgeInsets.only(top: 9.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PayPal",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 18.v),
                Text(
                  "20",
                  style: CustomTextStyles.titleSmallLime900,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 78,
          ),
          Container(
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              top: 20.v,
              right: 18.h,
              bottom: 21.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.gray400,
              borderRadius: BorderRadius.circular(
                12.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
