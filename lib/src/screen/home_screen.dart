

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/src/screen/Details_screen.dart';
import '../provider/home_provider.dart';
HomeScreen()=>ChangeNotifierProvider(create: (_)=>HomeNotifier(),child: Builder(builder: (context)=>HomeScreenProvider(context:context),),);
class HomeScreenProvider extends StatelessWidget {
  const HomeScreenProvider({Key? key ,required BuildContext context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Consumer<HomeNotifier>(builder: (context, state, child)=>SafeArea(
      top: true,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 20,left: 20,right: 10),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hello Mayank",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:  FontWeight.bold),),


                    Container(
                      height: 25,
                      width: 25,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                        child: Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 10,))
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 15),),

                Text("Delicious Food",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:  FontWeight.bold),),
                Text("Discover and Get Great Food ",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight:  FontWeight.w400),),
                Padding(padding: EdgeInsets.only(top: 15),),


              Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap: (){state.selectIceCream();},
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: state.iceCream?Colors.black:Colors.white,),
                        padding: EdgeInsets.all(8),
                        child: Image.asset("assets/images/png/ice-cream.png",
                          color: state.iceCream?Colors.white:Colors.black,
                          height: 50,width: 50,fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){state.selectPizza();},
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                        color: state.pizza?Colors.black:Colors.white),
                        padding: EdgeInsets.all(8),
                        child: Image.asset("assets/images/png/pizza.png",
                          color: state.pizza?Colors.white:Colors.black,
                          height: 50,width: 50,fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      state.selectsalad();
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                        color: state.salad?Colors.black:Colors.white
                        ),
                        padding: EdgeInsets.all(8),
                        child: Image.asset("assets/images/png/salad.png",
                          color: state.salad?Colors.white:Colors.black,
                          height: 50,width: 50,fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  InkWell(

                    onTap: (){
                      state.selectBurger();
                    },
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),

                        color: state.burger?Colors.black:Colors.white),
                        padding: EdgeInsets.all(8),
                        child: Image.asset("assets/images/png/burger.png",
                          color: state.burger?Colors.white:Colors.black,
                          height: 50,width: 50,fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                ],
              ),
                Padding(padding: EdgeInsets.only(top: 15),),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
                        },
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/png/salad2.png",height: 150,width: 150,
                                fit: BoxFit.cover,),
                                Text("Veggie Taco Hash",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:  FontWeight.bold),),
                                Padding(padding: EdgeInsets.only(top: 5),),
                                Text("fresh Healthy",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:  FontWeight.w600),),
                                Padding(padding: EdgeInsets.only(top: 5),),
                                Text("\$24",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight:  FontWeight.w400),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 15),),
                      Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/images/png/salad2.png",height: 150,width: 150,
                                fit: BoxFit.cover,),
                              Text("Veggie Taco Hash",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:  FontWeight.bold),),
                              Padding(padding: EdgeInsets.only(top: 5),),
                              Text("fresh Healthy",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:  FontWeight.w600),),
                              Padding(padding: EdgeInsets.only(top: 5),),
                              Text("\$24",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight:  FontWeight.w400),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                     // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/png/salad2.png",height: 150,width: 150,fit: BoxFit.cover,),
                        SizedBox(width: 20,),

                         Container(
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Veggie Taco Hash",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:  FontWeight.bold),),
                               Padding(padding: EdgeInsets.only(top: 5),),
                               Text("fresh Healthy",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:  FontWeight.w600),),
                               Padding(padding: EdgeInsets.only(top: 5),),
                               Text("\$24",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight:  FontWeight.w400),),

                             ],
                           ),
                         )

                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    ));
  }
}
