import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/screens/all_tasks.dart';
import 'package:task_management_app/utils/app_colors.dart';
import 'package:task_management_app/widgets/button_widgets.dart';

import 'package:task_management_app/screens/add_task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left:20,right: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/welcome.jpg"
            )
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                text:"Hello",
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                  text:"\nStart your beautiful day",
                  style: TextStyle(
                      color: AppColors.smallTextColor,
                      fontSize: 20,
                      // fontWeight: FontWeight.bold
                  )),
                ]
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/2,),
            InkWell(
              onTap: (){
                Get.to(()=>const AddTask(),transition: Transition.zoom,duration: const Duration(seconds: 1));
              },
              child: const ButtonWidget(text: "Add Task", textColor: Colors.white, bgColor: AppColors.mainColor),
            ),

            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Get.to(()=>const AllTasks(),transition: Transition.fade,duration: const Duration(seconds: 1));
              },
                child: const ButtonWidget(text: "View All", textColor: AppColors.mainColor, bgColor: Colors.white))
          ],
        ),
      ),
    );
  }
}
