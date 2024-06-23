import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/src/screen/signUp_screen.dart';

import '../../model/count_model.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  late  int currentIndex = 0;
  late PageController pageController = PageController();
  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
   pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: pageController,
                itemCount: countmodel.length,
                onPageChanged: (int index){
                  currentIndex= index;
                  setState(() {
                    
                  });
                },
                itemBuilder: (context,index){
return Padding(padding: EdgeInsets.all(20),
  child: Column(
    children: [
       Image.asset(countmodel[index].image!,height: 450,width: MediaQuery.of(context).size.width/1.5,fit: BoxFit.fill,),
    SizedBox(height: 40,),
      Text(countmodel[index].title!,style: TextStyle(color: Colors.black,fontSize: 16,fontWeight:  FontWeight.w500),),
      SizedBox(height: 20,),
      Text(countmodel[index].description!,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight:  FontWeight.w400),),
    ],
  ),
);
            }),
          ),

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                countmodel.length,
                    (index) => buildDot(index, context),
              ),
            ),
          ),

        GestureDetector(
        onTap: () {
      if (currentIndex == countmodel.length - 1) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignUpScreen()));
      }
      pageController.nextPage(
          duration: Duration(milliseconds: 100),
          curve: Curves.bounceIn);
    },
    child: Container(
    decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(20)),
    height: 60,
    margin: EdgeInsets.all(40),
    width: double.infinity,
    child: Center(
    child: Text(
    currentIndex == countmodel.length - 1?"Start": "Next",
    style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
    ),


      ),
    )
    )]));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.0,
      width: currentIndex == index ? 18 : 7,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.black38),
    );
  }
}
