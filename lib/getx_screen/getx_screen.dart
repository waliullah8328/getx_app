
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';


import 'package:getx_app/getx_screen/controller.dart';

class GetxScreen extends StatelessWidget {
  const GetxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GetxScreenController());
    return Scaffold(
      appBar: AppBar(title: const Text("Container Screen"),),
      body: Column(
        children: [
          Obx(() => Container(
            height: 200,
            width: 200,
            color: Colors.red.withOpacity(controller.opacity.value),
          )),
          Obx(() => Slider(value: controller.opacity.value, onChanged: (value){
            controller.changeOpacity(value);

          })),

          Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(controller.isSwitchOn.value == true?"Notification On":"Notification False"),

             Switch(value: controller.isSwitchOn.value, onChanged: (value){
                controller.changeSwitchButton(value);

              }),
            ],
          ))


        ],
      ),

    );
  }
}
