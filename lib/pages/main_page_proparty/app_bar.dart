import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Home",style: TextStyle(fontSize: 22),),
            Text("Annni Bryant",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          ],
        ),
        Row(
          children: [
            Container(
              transform: Matrix4.rotationZ(-50),
              height: 50,width: 50,
              child: Stack(children: [
                Icon(Icons.alarm,size: 45,),
                Positioned(
                    top: 5,
                    left: 5,
                    child: Container(
                      height: 15,width: 15,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15)),))

              ],),),
            SizedBox(width: 10,),
            CircleAvatar(radius: 30,backgroundImage: NetworkImage("https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),)

          ],
        ),
      ],);
  }
}
