import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  final String nameFromHome;
  const MyProfile({required this.nameFromHome, required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SizedBox(
            width:300 ,
            child: Column(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                Text("Welcome,$nameFromHome"),
                const SizedBox(height: 10,),

                ElevatedButton(onPressed: (){

                }, child: const Text("Portfolio")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
