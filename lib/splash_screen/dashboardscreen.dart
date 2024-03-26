import 'package:flutter/material.dart';
import 'package:splash_screen/splash_screen/myprofile.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController=TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width:300 ,
            child: Column(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                Text('DashBoard Screen'),
                SizedBox(height: 10,),
                TextField(
                  controller: nameController,

                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile(nameFromHome: nameController.text.toString(), key: ValueKey(DateTime.now()),),),);
                }, child: Text("MyProfile")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
