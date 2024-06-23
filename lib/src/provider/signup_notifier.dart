import 'package:flutter/cupertino.dart';

class SignUpNotifier  extends ChangeNotifier{
final formkey = GlobalKey<FormState>();
TextEditingController name = TextEditingController();
TextEditingController email  = TextEditingController();
TextEditingController password = TextEditingController();
}