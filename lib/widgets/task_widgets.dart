import 'package:flutter/material.dart';
import 'package:task_management_app/utils/app_colors.dart';

class TaskWidgets extends StatelessWidget {
  final String name;
  const TaskWidgets({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height/13,
      margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
      decoration: BoxDecoration(
        color: AppColors.textHolder,
        borderRadius: BorderRadius.circular(0),

      ),
      child: Center(
        child: Text(
          name,
          style: const TextStyle(

            fontSize: 20,
            // color: AppColors.textGrey,
          ),
        ),
      )
    );
  }
}
