import '../widgets/createfromframe_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CreatefromframesliderItemWidget extends StatelessWidget {
  CreatefromframesliderItemWidget({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 383.v,
        width: 822.h,
        margin: EdgeInsets.only(
          top: 35.v,
          bottom: 53.v,
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 383.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  sliderIndex = index;
                },
              ),
              itemCount: 1,
              itemBuilder: (context, index, realIndex) {
                return CreatefromframeItemWidget();
              },
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 353.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 6.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFavoriteRed800,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      margin: EdgeInsets.only(right: 27.h),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
