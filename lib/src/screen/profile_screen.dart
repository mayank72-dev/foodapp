import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/profile_notifier.dart';


ProfileScreen()=>ChangeNotifierProvider(create: (_)=>ProfileNotifier(),child: Builder(builder: (context)=>ProfileScreenProvider(context:context),),);
class ProfileScreenProvider extends StatelessWidget {
  const ProfileScreenProvider({Key? key, required BuildContext context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileNotifier>(builder: (context,state,child )=>Scaffold(
      body: Center(child: Text("profile"),),
    ));
  }
}
