import 'package:flutter/material.dart';
import 'package:task_management_app/utils/app_colors.dart';
import 'package:task_management_app/widgets/button_widgets.dart';

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
        padding: const EdgeInsets.only(left:20,top: 70),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/welcome.jpg"
            )
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            const ButtonWidget(text: "Add Task", textColor: Colors.white, bgColor: AppColors.mainColor),
            const ButtonWidget(text: "View All", textColor: AppColors.mainColor, bgColor: Colors.white)
          ],
        ),
      ),
    );
  }
}
