import 'package:flutter/material.dart';
import 'package:ronan_s_application2/presentation/iphone_messagerie_container_screen/iphone_messagerie_container_screen.dart';
import 'package:ronan_s_application2/presentation/iphone_inscription_screen/iphone_inscription_screen.dart';
import 'package:ronan_s_application2/presentation/iphone_connexion_screen/iphone_connexion_screen.dart';
import 'package:ronan_s_application2/presentation/iphone_messagerie_two_screen/iphone_messagerie_two_screen.dart';
import 'package:ronan_s_application2/presentation/iphone_cours_screen/iphone_cours_screen.dart';
import 'package:ronan_s_application2/presentation/iphone_cours_one_screen/iphone_cours_one_screen.dart';
import 'package:ronan_s_application2/presentation/iphone_bon_plans_screen/iphone_bon_plans_screen.dart';
import 'package:ronan_s_application2/presentation/iphone_profil_screen/iphone_profil_screen.dart';
import 'package:ronan_s_application2/presentation/iphone_annuaire_screen/iphone_annuaire_screen.dart';
import 'package:ronan_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphoneMessageriePage = '/iphone_messagerie_page';

  static const String iphoneMessagerieContainerScreen =
      '/iphone_messagerie_container_screen';

  static const String iphoneInscriptionScreen = '/iphone_inscription_screen';

  static const String iphoneConnexionScreen = '/iphone_connexion_screen';

  static const String iphoneMessagerieTwoScreen =
      '/iphone_messagerie_two_screen';

  static const String iphoneCoursScreen = '/iphone_cours_screen';

  static const String iphoneCoursOneScreen = '/iphone_cours_one_screen';

  static const String iphoneBonPlansScreen = '/iphone_bon_plans_screen';

  static const String iphoneProfilScreen = '/iphone_profil_screen';

  static const String iphoneAnnuaireScreen = '/iphone_annuaire_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphoneMessagerieContainerScreen: (context) =>
        IphoneMessagerieContainerScreen(),
    iphoneInscriptionScreen: (context) => IphoneInscriptionScreen(),
    iphoneConnexionScreen: (context) => IphoneConnexionScreen(),
    iphoneMessagerieTwoScreen: (context) => IphoneMessagerieTwoScreen(),
    iphoneCoursScreen: (context) => IphoneCoursScreen(),
    iphoneCoursOneScreen: (context) => IphoneCoursOneScreen(),
    iphoneBonPlansScreen: (context) => IphoneBonPlansScreen(),
    iphoneProfilScreen: (context) => IphoneProfilScreen(),
    iphoneAnnuaireScreen: (context) => IphoneAnnuaireScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
