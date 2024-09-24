import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/image_picjer/image_picker_controller.dart';

class ImagePickerScreen extends StatelessWidget {
  const ImagePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(ImagePickerController());
    return SafeArea(
      child: Scaffold(
        body: Obx(()=>Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 300,),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: CircleAvatar(


                    backgroundImage: controller.imagePath.isNotEmpty?
                    FileImage(File(controller.imagePath.toString(),)):
                        null,
                  ),
                ),
                TextButton(onPressed: (){
                  controller.getImage();
                }, child: Text("Pick Image")),

              ],
            ),
          ),
        )),
      
      ),
    );
  }
}
