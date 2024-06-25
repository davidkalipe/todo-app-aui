import 'package:flutter/cupertino.dart';

class RoutingProvider extends ChangeNotifier{
  int currentIndex = 0;
  setIndex(int index){
    currentIndex = index;
    notifyListeners();
  }
  getIndex(){
    return currentIndex;
  }
}