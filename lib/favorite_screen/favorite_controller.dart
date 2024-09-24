import 'package:get/get.dart';

class FavoriteListController extends GetxController{

  RxList favoriteList = ["Banana", "Mango","JackFruit","PineApple","Guava"].obs;
  RxList tempFavoriteList =[].obs;


  addFavoriteList(String value){
    tempFavoriteList.add(value);
  }
  removeFavoriteList(String value){
    tempFavoriteList.remove(value);
  }




}