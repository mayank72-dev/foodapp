import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../provider/cart_notifier.dart';

CartScreen()=>ChangeNotifierProvider(create: (_)=>CartNotifier(),child: Builder(builder: (context)=>CartProviderScreen(context:context),),);
class CartProviderScreen extends StatelessWidget {
  const CartProviderScreen({Key? key, required BuildContext context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartNotifier>(builder: (Builder, state, child)=>Scaffold(
      body: Center(child: Text("Cart"),),
    ));
  }
}
