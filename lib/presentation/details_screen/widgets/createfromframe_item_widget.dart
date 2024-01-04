import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CreatefromframeItemWidget extends StatelessWidget {
  const CreatefromframeItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgBaRemovebgPreview,
        height: 300.v,
        width: 336.h,
        margin: EdgeInsets.fromLTRB(458.h, 51.v, 27.h, 32.v),
      ),
    );
  }
}
