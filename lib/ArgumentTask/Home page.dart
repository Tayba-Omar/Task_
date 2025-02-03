import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
 class home extends StatelessWidget {
   String userName;
   home({required this.userName});
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(child:
       Center(
         child: Column(
           children: [
             Container(
                 width: 200,
                 height: 200,
                 child: Lottie.network("https://lottie.host/e9aa23ba-31e0-4f6d-9ed4-f1127b73a27c/02cndQJOuR.json")
             ),

         Text("...HI...",style:TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold ),),

        Text( userName,style:TextStyle(color: Colors.purple,fontSize: 25,fontWeight: FontWeight.bold ),),



           ],
         ),
       )
       ),
     );
   }
 }
