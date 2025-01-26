import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Customize/FormField.dart';
import 'Customize/toValidate.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
                              child: Lottie.network("https://lottie.host/dc120986-5f07-4f70-95e7-555ed5f054da/82B1pID9lD.json")
                          ),
                      ),
                      Center(
                          child: Text("Login",style:TextStyle(color: Colors.black,fontSize: 29,fontWeight: FontWeight.bold ),
                          )
                      ) ,
                      Text("Let's Get Started",style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold ),
                      ),
                      Text("create an account",style:TextStyle(color: Colors.grey[700],fontSize: 15 ),),
                 
                          SizedBox(
                            height: 2,
                          ),
                          Textformfiled(lbl: "Email",hint: "example@domain.com",
                            preIcon: Icons.email,
                              toCheck: (check){
                                if(!(emailValidation(check))){
                                  return "Not vaild";
                                }
                                return null; // true
                              }
                              ),
                          SizedBox(
                            height: 8,
                          ),
                 
                 
                          Textformfiled(lbl: "password",hint: "********",preIcon: Icons.password,
                              suffIcon: Icons.remove_red_eye_outlined,
                              toCheck: (check){
                                if(!(passValidation(check))){
                                  return "Not vaild";
                                }
                                return null; // true
                              }),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: EdgeInsetsDirectional.only(start: 222),
                        child: Text("forget password?",style:TextStyle(color: Colors.grey[700],fontSize: 13 ),
                        ),
                          ),
                      Center(
                 
                 
                            child: ElevatedButton(onPressed: (){
                              if(_formKey.currentState!.validate()){ // null -->action
                                print("Done");
                              }
                              //action
                            },
                              child: Text("Login",style:TextStyle( color: Colors.white),),
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
