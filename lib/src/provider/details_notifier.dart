import 'package:flutter/cupertino.dart';

class DetailsNotifier extends ChangeNotifier{
int add =1;


increment(){
  if(add>=1) {
    ++add;
  }
notifyListeners();
}

decrement(){
  if(add>1) {
    --add;
  }
  notifyListeners();
}

}