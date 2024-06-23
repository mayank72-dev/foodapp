import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/src/provider/signup_notifier.dart';
import 'package:untitled/src/screen/login_screen.dart';
SignUpScreen()=>ChangeNotifierProvider(create: (_)=>SignUpNotifier(),child: Builder(builder: (context)=>SignUpScreenProvider(context:context),),);
class SignUpScreenProvider extends StatelessWidget {
  const SignUpScreenProvider({Key? key,required BuildContext context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Consumer<SignUpNotifier>(builder: (context, state, child)=>
        Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2.5,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFff5c30),
                              Color(0xFFe74b1a),
                            ])),
                  ),
                  Container(
                    margin:
                    EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Text(""),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: [
                        Center(
                            child: Image.asset(
                              "assets/images/png/logo.png",
                              width: MediaQuery.of(context).size.width / 1.5,
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 50.0,
                        ),
                        Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 1.8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Form(
                              key:state.formkey,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  Text(
                                    "Sign up",
                                    style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:  FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  TextFormField(
                                    controller: state.name,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Name';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'Name',
                                        prefixIcon: Icon(Icons.person_outlined)),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  TextFormField(
                                    controller: state.email,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter E-mail';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        hintText: 'Email',
                                        prefixIcon: Icon(Icons.email_outlined)),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  TextFormField(
                                    controller: state.password,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please Enter Password';
                                      }
                                      return null;
                                    },
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: 'Password',

                                        prefixIcon: Icon(Icons.password_outlined)),
                                  ),
                                  SizedBox(
                                    height: 80.0,
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                    /*  if (_formkey.currentState!.validate()) {
                                        setState(() {
                                          email = mailcontroller.text;
                                          name = namecontroller.text;
                                          password = passwordcontroller.text;
                                        });
                                      }
                                      registration();*/
                                    },
                                    child: Material(
                                      elevation: 5.0,
                                      borderRadius: BorderRadius.circular(20),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(vertical: 8.0),
                                        width: 200,
                                        decoration: BoxDecoration(
                                            color: Color(0Xffff5722),
                                            borderRadius: BorderRadius.circular(20)),
                                        child: Center(
                                            child: Text(
                                              "SIGN UP",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.0,
                                                  fontFamily: 'Poppins1',
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70.0,
                        ),
                        GestureDetector(
                            onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              "Already have an account? Login",
                              style: TextStyle(color: Colors.black,fontSize: 16,fontWeight:  FontWeight.w500),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
     }
}
