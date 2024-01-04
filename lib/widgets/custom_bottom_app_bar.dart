import 'package:flutter/material.dart';
import 'package:trainee_s_application2/core/app_export.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgRewind,
        activeIcon: ImageConstant.imgRewind,
        type: BottomBarEnum.Rewind,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgFavorite,
      activeIcon: ImageConstant.imgFavorite,
      type: BottomBarEnum.Favorite,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgAddShoppingCart,
      activeIcon: ImageConstant.imgAddShoppingCart,
      type: BottomBarEnum.Addshoppingcart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPerson,
      activeIcon: ImageConstant.imgPerson,
      type: BottomBarEnum.Person,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: appTheme.indigo30002,
      child: SizedBox(
        height: 95.v,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widget.onChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? CustomImageView(
                        imagePath: bottomMenuList[index].activeIcon,
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        color: appTheme.gray400,
                      )
                    : CustomImageView(
                        imagePath: bottomMenuList[index].icon,
                        height: 50.adaptSize,
                        width: 50.adaptSize,
                        color: appTheme.gray400,
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Rewind,
  Favorite,
  Addshoppingcart,
  Person,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
