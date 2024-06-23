import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/wallet_notifier.dart';

WalletScreen()=>ChangeNotifierProvider(create: (_)=>WalleteNotifier(),child: Builder(builder: (context)=>WaletProviderScreen(context:context),),);
class WaletProviderScreen extends StatelessWidget {
  const WaletProviderScreen({Key? key, required BuildContext context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<WalleteNotifier>(builder: (context, state, child)=>Scaffold(
      body: Center(child: Text("Wallet"),),
    ));
  }
}
