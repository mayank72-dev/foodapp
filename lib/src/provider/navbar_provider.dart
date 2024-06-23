import 'package:flutter/cupertino.dart';
import 'package:untitled/src/screen/profile_screen.dart';


import '../screen/cart_screen.dart';
import '../screen/home_screen.dart';
import '../screen/wallet_screen.dart';


class NavBarNotifier extends ChangeNotifier{
int currentIndex = 0;
List<Widget>Pages=[
  HomeScreen(),
  CartScreen(),
  ProfileScreen(),
  WalletScreen(),

];


iniitState(){

}
selectPage(index){
  currentIndex = index;
  notifyListeners();

}

}