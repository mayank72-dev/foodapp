import 'package:flutter/cupertino.dart';

import '../../../model/item.dart';

class HomeNotifier extends ChangeNotifier{
  bool iceCream = false,pizza= false,salad = false, burger= false;

  List<Item> item = [
    Item(image: "assets/images/png/ice-cream.png",isSelect: true),
    Item(image: "assets/images/png/pizza.png",isSelect: false),
    Item(image: "assets/images/png/salad.png",isSelect: false),
    Item(image: "assets/images/png/burger.png",isSelect: false),

  ];

  selectIceCream(){
    iceCream =true;
    pizza=false;
    salad=false;
    burger=false;
    notifyListeners();


  }
  selectPizza(){
    iceCream =false;
    pizza=true;
    salad=false;
    burger=false;
    notifyListeners();


  }

  selectsalad(){
    iceCream =false;
    pizza=false;
    salad=true;
    burger=false;
    notifyListeners();


  }
  selectBurger(){
    iceCream =false;
    pizza=false;
    salad=false;
    burger=true;
    notifyListeners();


  }

}

