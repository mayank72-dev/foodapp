
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/src/screen/home_screen.dart';
import 'package:untitled/src/screen/profile_screen.dart';

import 'package:untitled/src/screen/wallet_screen.dart';
import '../provider/navbar_provider.dart';
import 'cart_screen.dart';
NavBarScreen()=>ChangeNotifierProvider(create: (_)=>NavBarNotifier(),child: Builder(builder: (context)=>NavBarProvider(context:context),),);
class NavBarProvider extends StatelessWidget {

   NavBarProvider({Key? key, required BuildContext context}) : super(key: key){
     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
       var state = Provider.of<NavBarNotifier>(context,listen: false);
    state.iniitState();
     });
   }
  @override
  Widget build(BuildContext context) {
    return Consumer<NavBarNotifier>(builder: (context, state, Child)=>Scaffold(
      body: state.Pages[state.currentIndex],

      bottomNavigationBar:Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          margin: EdgeInsets.only(left: 10, right: 10),
          currentIndex: state.currentIndex,
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          splashBorderRadius: 50,
          // enableFloatingNavBar: false,
          onTap: state.selectPage,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: Icon(Icons.home),
              selectedColor: Color(0xff73544C),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              selectedColor: Color(0xff73544C),
            ),

            /// Search
            DotNavigationBarItem(
              icon: Icon(Icons.wallet),
              selectedColor: Color(0xff73544C),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: Icon(Icons.person),
              selectedColor: Color(0xff73544C),
            ),
          ],
        ),
      ),
    ));
  }
}







