import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_app/getx_screen/getx_screen.dart';
import 'package:getx_app/home/home_screen.dart';
import 'package:getx_app/image_picjer/image_picker_screen.dart';
import 'package:getx_app/login/login_controller/login_controller.dart';
import 'package:getx_app/widgets/elevated_button.dart';
import 'package:getx_app/widgets/text_widget.dart';

import '../favorite_screen/product_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});




  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login Screen"),
        ),
        body: Center(
          child: Column(
            children: [
              TextWidgets(
                  text: "Navigation on screen to another screen", size: 20),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  data: "Login",
                  onPress: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                    Get.to(HomeScreen());
                    //Get.snackbar("Welcome", "Home Page");
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Wecome Home Page")));
                  }

                  ,
              ),
              Obx(() => Text("${controller.count.value}")),

              ElevatedButton(onPressed: (){
                controller.count.value++;
              }, child: const Text("Plus")),

              ElevatedButton(onPressed: (){
                controller.count.value--;
              }, child: const Text("Minus")),

              ElevatedButton(onPressed: (){
                Get.to(()=> const GetxScreen());
              }, child: const Text("Go to GetxScreen")),


              ElevatedButton(onPressed: (){
                Get.to(()=> const ProductScreen());
              }, child: const Text("Go to Product")),
              ElevatedButton(onPressed: (){
                Get.to(()=> const ImagePickerScreen());
              }, child: const Text("Go to ImagePicker Screen")),
            ],
          ),
        ));
  }
}
