import 'package:flutter/material.dart';
import 'package:trainee_s_application2/presentation/accounts_screen/accounts_screen.dart';
import 'package:trainee_s_application2/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:trainee_s_application2/presentation/login_screen/login_screen.dart';
import 'package:trainee_s_application2/presentation/accounts_one_screen/accounts_one_screen.dart';
import 'package:trainee_s_application2/presentation/sucessful_messgae_screen/sucessful_messgae_screen.dart';
import 'package:trainee_s_application2/presentation/details_screen/details_screen.dart';
import 'package:trainee_s_application2/presentation/payment_method_container_screen/payment_method_container_screen.dart';
import 'package:trainee_s_application2/presentation/cart_screen/cart_screen.dart';
import 'package:trainee_s_application2/presentation/onboard_screen/onboard_screen.dart';
import 'package:trainee_s_application2/presentation/add_details_screen/add_details_screen.dart';
import 'package:trainee_s_application2/presentation/payments_screen/payments_screen.dart';
import 'package:trainee_s_application2/presentation/home_screen/home_screen.dart';
import 'package:trainee_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String accountsScreen = '/accounts_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String accountsOneScreen = '/accounts_one_screen';

  static const String sucessfulMessgaeScreen = '/sucessful_messgae_screen';

  static const String detailsScreen = '/details_screen';

  static const String paymentMethodPage = '/payment_method_page';

  static const String paymentMethodContainerScreen =
      '/payment_method_container_screen';

  static const String cartScreen = '/cart_screen';

  static const String onboardScreen = '/onboard_screen';

  static const String addDetailsScreen = '/add_details_screen';

  static const String paymentsScreen = '/payments_screen';

  static const String homeScreen = '/home_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    accountsScreen: (context) => AccountsScreen(),
    signUpScreen: (context) => SignUpScreen(),
    loginScreen: (context) => LoginScreen(),
    accountsOneScreen: (context) => AccountsOneScreen(),
    sucessfulMessgaeScreen: (context) => SucessfulMessgaeScreen(),
    detailsScreen: (context) => DetailsScreen(),
    paymentMethodContainerScreen: (context) => PaymentMethodContainerScreen(),
    cartScreen: (context) => CartScreen(),
    onboardScreen: (context) => OnboardScreen(),
    addDetailsScreen: (context) => AddDetailsScreen(),
    paymentsScreen: (context) => PaymentsScreen(),
    homeScreen: (context) => HomeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
