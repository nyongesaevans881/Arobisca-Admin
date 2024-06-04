import 'package:admin/screens/category/category_screen.dart';

import '../../coupon_code/coupon_code_screen.dart';
import '../../dashboard/dashboard_screen.dart';
import '../../notification/notification_screen.dart';
import '../../order/order_screen.dart';
import '../../posters/poster_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MainScreenProvider extends ChangeNotifier{
  Widget selectedScreen = DashboardScreen();



  //? to update screen when click tab on side bar
  navigateToScreen(String screenName) {
    switch (screenName) {
      case 'Dashboard':
        selectedScreen = DashboardScreen();
        break; // Break statement needed here
      case 'Category':
        selectedScreen = CategoryScreen();
        break;
      case 'Coupon':
        selectedScreen = CouponCodeScreen();
        break;
      case 'Poster':
        selectedScreen = PosterScreen();
        break;
      case 'Order':
        selectedScreen = OrderScreen();
        break;
      case 'Notifications':
        selectedScreen = NotificationScreen();
        break;
      default:
        selectedScreen = DashboardScreen();
    }
    notifyListeners();
  }
  
  
}