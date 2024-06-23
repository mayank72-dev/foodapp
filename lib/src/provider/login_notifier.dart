import 'package:flutter/cupertino.dart';

class LoginNotifier extends ChangeNotifier{
   final formkey = GlobalKey<FormState>();
   TextEditingController email = TextEditingController();
   TextEditingController password = TextEditingController();
}