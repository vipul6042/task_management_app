import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/utils/app_colors.dart';
import 'package:task_management_app/widgets/textfilled_widgets.dart';

import '../widgets/button_widgets.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController=TextEditingController();
    TextEditingController detailController=TextEditingController();

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left:20,right: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/addtask1.jpg")
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(

              children: [
                const SizedBox(height: 60,),
                InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child: const Icon(Icons.arrow_back,color: AppColors.secondaryColor,),
                ),
              ],
            ),
            Column(
              children: [
                TextFilledWidgets(textController: nameController, hintText: "Task name", borderRadius: 30),
                const SizedBox(height: 20,),
                TextFilledWidgets(textController: detailController, hintText: "Add details", borderRadius: 15,maxLine: 5,),
                const SizedBox(height: 20,),
                const ButtonWidget(text: "Add", textColor: Colors.white, bgColor: AppColors.mainColor)

              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/20,
            )
          ],
        ),
      ),
    );
  }
}
