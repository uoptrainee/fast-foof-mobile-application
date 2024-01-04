import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';
import 'package:trainee_s_application2/widgets/custom_elevated_button.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.indigo30001,
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                appTheme.indigo600Ce,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 22.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFoodRemovebgPreview,
                  height: 334.v,
                  width: 325.h,
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(height: 11.v),
                Container(
                  width: 320.h,
                  margin: EdgeInsets.only(
                    left: 18.h,
                    right: 10.h,
                  ),
                  child: Text(
                    "\"Let food be thy medicine and medicine be thy food.\"",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.displayMediumBluegray20001,
                  ),
                ),
                SizedBox(height: 29.v),
                CustomElevatedButton(
                  text: "Get started",
                  margin: EdgeInsets.only(
                    left: 23.h,
                    right: 24.h,
                  ),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientBlueGrayToPrimaryDecoration,
                  buttonTextStyle:
                      CustomTextStyles.headlineLargeIndigoA700ExtraBold,
                ),
                SizedBox(height: 3.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
