import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management_app/utils/app_colors.dart';
import 'package:task_management_app/widgets/button_widgets.dart';
import 'package:task_management_app/widgets/task_widgets.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    List myData=[
      "hard",
      "Smart",
    ];
    final leftEditIcon=Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: const Color(0xFF2e3253).withOpacity(0.5),
      alignment: Alignment.centerLeft,
      child: const Icon(
        Icons.edit,
        color: Colors.white,
      ),
    );
    final rightEditIcon=Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.redAccent,
      alignment: Alignment.centerRight,
      child: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40,left: 10),
            alignment: Alignment.topLeft,
            height: MediaQuery.of(context).size.height/3.2,
            width: double.maxFinite,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/header1.jpg"
                    )
                )
            ),
            child: InkWell(
              onTap: (){
                Get.back();
              },
              child: const Icon(Icons.arrow_back,color: AppColors.secondaryColor,),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Row(
                  children: [

                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.home),
                      color: AppColors.secondaryColor,
                    ),
                    IconButton(
                        onPressed: (){},
                        color: AppColors.mainColor,
                        icon: const Icon(Icons.add_circle_sharp)
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width/1.8,),
                    IconButton(
                        onPressed: (){},
                        color: AppColors.secondaryColor,
                        icon: const Icon(Icons.calendar_month_sharp)
                    ),
                    const Text("2",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColors.mainColor,
                      ),
                    ),

                  ],
                ),

              ],
            ),

          ),
          Flexible(
              child: ListView.builder(
                  itemCount:myData.length,
                  itemBuilder: (context,index){
                return Dismissible(
                  background: leftEditIcon,
                  secondaryBackground: rightEditIcon,
                  onDismissed: (DismissDirection direction){

                  },
                  confirmDismiss: (DismissDirection direction)async {
                    if(direction==DismissDirection.startToEnd){
                      showModalBottomSheet(
                        backgroundColor: const Color(0xFF2e3253).withOpacity(0.4),
                          barrierColor: Colors.transparent,
                          context: context,
                          builder: (_) {
                            return Container(
                              height: 600,
                              width: double.maxFinite,
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: const Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ButtonWidget(text: "View", textColor: Colors.white, bgColor: AppColors.mainColor),
                                      SizedBox(height: 20,),
                                      ButtonWidget(text: "Edit", textColor: AppColors.secondaryColor, bgColor: AppColors.mainColor),
                                    ],
                                  ),
                                
                              ),
                            );
                          }
                      );
                      return false;
                    }else {
                      return true;
                    }

                  },
                  key: ObjectKey(index),
                  child: TaskWidgets(
                    name: myData[index],
                  ),
                );
              })
          )
        ],
      ),
    );
  }
}
