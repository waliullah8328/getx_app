
import 'package:get/get.dart';


class GetxScreenController extends GetxController{

  RxDouble opacity = .4.obs;
  RxBool isSwitchOn = false.obs;

  changeOpacity(double value){
    opacity.value = value;

  }

  changeSwitchButton(bool value){
    isSwitchOn.value = value;

}




}