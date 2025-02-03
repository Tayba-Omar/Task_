import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Customize/FormField.dart';
import '../Customize/toValidate.dart';
import 'Home page.dart';



class Start extends StatefulWidget {
  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  String name= "USER";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child:
                  Container(
                      width: 200,
                      height: 200,
                      child: Lottie.network("https://lottie.host/a1d68b94-5a29-4135-b282-a39dbf318c63/Kty18kg6hc.json")
                  ),
                ),

                Text("Let's Get Started",style:TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold ),
                ),

                SizedBox(
                  height: 2,
                ),
                Textformfiled(lbl: "Username",hint: "*****",
                    preIcon: Icons.badge,
                    toCheck: (check){
                      if(!(uesrNameValidation(check))){
                        return "Not vaild";
                      }
                      name = check!;
                      return null; // true
                    }
                ),
                SizedBox(
                  height: 8,
                ),


                Center(


                  child: ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){// null -->action
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => home( userName: name,) ));
                      print("Done");
                    }
                    //action
                  },
                    child: Text("NEXT",style:TextStyle( color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

      ),
    );
  }
}
