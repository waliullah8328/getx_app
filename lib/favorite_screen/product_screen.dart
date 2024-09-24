import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/favorite_screen/favorite_screen.dart';

import 'favorite_controller.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FavoriteListController());
    return Scaffold(
      appBar:AppBar(title: const Text("Product Screen")),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: controller.favoriteList.length,
                itemBuilder: (context, index) {
                final product = controller.favoriteList[index];
                  return  ListTile(
                    onTap: (){
                      if(controller.tempFavoriteList.contains(product.toString())){
                        controller.removeFavoriteList(product.toString());
                      }else{
                        controller.addFavoriteList(product.toString());

                      }
                    },
                    title: Text(product.toString()),
                    trailing: Obx(()=> controller.tempFavoriteList.contains(product.toString())? const Icon(Icons.favorite):const Icon(Icons.favorite_border)),
                  );
                },
            ),
          ),
/*
          TextButton(onPressed: (){
            Get.to(()=> const FavoriteScreen(tempList: controller.tempFavoriteList.toString(),));

          }, child: Text("Go To Favorite Screen"))*/
        ],
      ),
    );
  }
}
