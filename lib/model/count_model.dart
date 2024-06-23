class CountModel{
  String? image;
  String? title;
  String? description;
  CountModel({this.image,this.description,this.title});


}

List<CountModel> countmodel =[
  CountModel(
    description:"Pickup your food from Our menu\n  More", image:  "assets/images/png/screen1.png",title: "Select from Our menu"),
  CountModel(description: "You pay cash on delivery and\n Card payment is available",image: "assets/images/png/screen2.png", title: "Easy to online Payment"),
  CountModel(description: "Deliver your  food at your \n Doorstep",image: "assets/images/png/screen3.png", title: "Quick Delivery at Your Doors")
];