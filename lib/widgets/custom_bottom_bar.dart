import 'package:flutter/material.dart';
import 'package:ronan_s_application2/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgChatBulle1,
      activeIcon: ImageConstant.imgChatBulle1,
      type: BottomBarEnum.Chatbulle1,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgOrdreDuJour1,
      activeIcon: ImageConstant.imgOrdreDuJour1,
      type: BottomBarEnum.Ordredujour1,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgEtiquette1,
      activeIcon: ImageConstant.imgEtiquette1,
      type: BottomBarEnum.Etiquette1,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFilDactualite1,
      activeIcon: ImageConstant.imgFilDactualite1,
      type: BottomBarEnum.Fildactualite1,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgAnnuaire1,
      activeIcon: ImageConstant.imgAnnuaire1,
      type: BottomBarEnum.Annuaire1,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLivre2,
      activeIcon: ImageConstant.imgLivre2,
      type: BottomBarEnum.Livre2,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34.v,
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 30.adaptSize,
              width: 30.adaptSize,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 32.adaptSize,
              width: 32.adaptSize,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Chatbulle1,
  Ordredujour1,
  Etiquette1,
  Fildactualite1,
  Annuaire1,
  Livre2,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
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
