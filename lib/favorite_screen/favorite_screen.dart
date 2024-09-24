import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/favorite_screen/favorite_controller.dart';


class FavoriteScreen extends StatelessWidget {
  final tempList;
  const FavoriteScreen({super.key, this.tempList});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FavoriteListController());
    return ListView.builder(
      itemCount: controller.tempFavoriteList.length,
        itemBuilder: (context, index) {
        final tempFavorite = controller.tempFavoriteList[index];
          return ListTile(
            title: Obx(()=>Text(tempFavorite.toString())),

          );
        },
    );
  }
}
