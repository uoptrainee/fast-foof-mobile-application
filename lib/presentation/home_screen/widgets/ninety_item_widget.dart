import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class NinetyItemWidget extends StatelessWidget {
  const NinetyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 83.h,
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(
            top: 3.v,
            bottom: 184.v,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 76.v,
                width: 83.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 68.v,
                        width: 76.h,
                        margin: EdgeInsets.only(top: 1.v),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(
                            20.h,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFoodRemovebgPreview,
                      height: 76.v,
                      width: 83.h,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                "All",
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
