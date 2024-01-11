import 'package:flutter/material.dart';
import 'package:login_signup/form/signup.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(

            child: Column(
              children: [

                Image.asset(

                  "assets/sign in.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(

                    fontSize: 28,
                    fontWeight: FontWeight.bold,color: Colors.black38
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 22.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          hintText: "Enter username",
                          labelText: "Username",
                        ),

                        validator: (value){
                          if(value!.isEmpty){
                            return"Please enterName";

                          }
                        },


                      ),
                      SizedBox(
                        height: 40.0,
                      ),

                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          hintText: "Enter password",
                          labelText: "Password",


                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return"Please enter password";

                          }
                          else if(value.length<6)
                          {
                            return"Please enter atlest 6 character";
                          }
                          else if(value.characters.isEmpty)
                          {
                            return"Please enter  character";
                          }
                        },


                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "SIGN IN",
                            style: TextStyle(

                                fontSize: 18,
                                fontWeight: FontWeight.bold,color: Colors.black54
                            ),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black,
                            child: IconButton(
                              color: Colors.white,
                              onPressed: (

                                  ){},
                              icon: Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        TextButton(onPressed:(){
                          Navigator.pushNamed(context, 'signup');
                        }, child: Text("Sign up",
                          style: TextStyle(

                              fontSize: 11,
                              fontWeight: FontWeight.bold,color: Colors.green
                          ),)),

                          TextButton(onPressed:(){
                            Navigator.pushNamed(context, 'signup');
                          }, child: Text("Forget Password",
                            style: TextStyle(

                                fontSize: 11,
                                fontWeight: FontWeight.bold,color: Colors.green
                            ),)),


                        ],
                      )


                    ],
                  ),
                ),
                
                ElevatedButton(

                    style: TextButton.styleFrom(),
                    onPressed: (){},
                    child:Text("LOGIN"))
              ],

            ),
          ),
        ));

  }
}
