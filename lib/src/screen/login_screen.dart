import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/src/provider/login_notifier.dart';
import 'package:untitled/src/screen/signUp_screen.dart';
LoginScreen()=>ChangeNotifierProvider(create: (_)=>LoginNotifier(),child: Builder(builder: (context)=>LoginScreenProvider(context:context),),);
class LoginScreenProvider extends StatelessWidget {
  const LoginScreenProvider({Key? key, required BuildContext context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginNotifier>(builder: (context, state, child)=>Scaffold(
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
      height: MediaQuery.of(context).size.height / 2,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20)),

          child: Form(
            key: state.formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
            Text("Login",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:  FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: state.email,
                  validator: (value){
                    if(value==null|| value.isEmpty){
                      return 'Please Enter Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                     hintText: "Email",
                      prefixIcon: Icon(Icons.email_outlined)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller:state.password,
                  validator: (value){
                    if(value==null|| value.isEmpty){
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
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: (){
                   // Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPassword()));
                  },
                  child: Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Forgot Password?",

                                       )),
                ),
                SizedBox(
                  height: 80.0,
                ),
                GestureDetector(
                  onTap: (){
                  /*  if(state.formkey.currentState!.validate()){
                      setState(() {
                        email= useremailcontroller.text;
                        password= userpasswordcontroller.text;
                      });
                    }
                    userLogin();*/
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
                            "LOGIN",
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpScreen()));
            },
            child: Text(
              "Don't have an account? Sign up",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight:  FontWeight.w500),),)
        ],
        ),
        ),
    ]),
    ),
      )
    )
    );

  }
}
