import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/src/provider/details_notifier.dart';
DetailsScreen()=>ChangeNotifierProvider(create: (_)=>DetailsNotifier(),child: Builder(builder: (context)=>DetailsProviderScreen(context:context),),);
class DetailsProviderScreen extends StatelessWidget {
  const DetailsProviderScreen({Key? key,required BuildContext context}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DetailsNotifier>(builder: (context,state, child)=>SafeArea(
      child: Scaffold(
        body:  Container(
          margin: EdgeInsets.only(left: 20,top: 40,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:   [
          InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
              Image.asset("assets/images/png/salad2.png",width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.5,
                fit: BoxFit.fill,),
              Padding(padding: EdgeInsets.only(top: 10)),
                        Row(

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Veggie Taco Hash",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight:  FontWeight.bold),),
                      Text("Veggie Taco Hash",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight:  FontWeight.bold),),

                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: (){state.decrement();},
                    child: Container(
                       decoration: BoxDecoration(color: Colors.black,
                       borderRadius: BorderRadius.circular(8)),
                        child: Icon(Icons.remove,color: Colors.white,)),
                  ),
                  SizedBox(width: 20,),
                  Text(state.add.toString(),style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600),),
                  SizedBox(width: 20,),
                  InkWell(onTap: (){state.increment();},
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(Icons.add,color: Colors.white,)


                      ,
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type ",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight:  FontWeight.w400,),
              ),
           Padding(padding: EdgeInsets.only(top: 20)),
           Row(
             children: [
               Text("Delivery Time", style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500)),
               Padding(padding: EdgeInsets.only(left: 25)),
               Icon(Icons.alarm,size: 20,color: Colors.black,),
               Text("30 min.", style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500)),
             ],
           ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total Price", style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),

                    Text("\$25", style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),


                  ],
                ),

                  GestureDetector(
                      onTap: () async {

                       // await DatabaseMethods().addFoodToCart(addFoodtoCart, id!);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.orangeAccent,
                            content: Text(
                              "Food Added to Cart",
                              style: TextStyle(fontSize: 18.0),
                            )));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Add to cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontFamily: 'Poppins'),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                          ],
                        ),
                      ),
                   /* Container(
                      width: MediaQuery.of(context).size.width/2,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(color: Colors.black),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Add Cart", style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)),
                          SizedBox(width: 40,),
                          Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.grey),

                              child: Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 10,))
                        ],
                      ),
                    ),*/
             )
             ] ),

        ),
      ]),
    ))));
  }
}
