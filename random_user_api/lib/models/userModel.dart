class userModel{
 List<dynamic> results;
 userModel({required this.results});
 factory userModel.fromJson(Map<String,dynamic> json){
  List<dynamic> fulldata = json["results"].map((user){
    return{
      "Name": user["name"]["first"],
      "Email": user["email"],
      "Image": user["picture"]["large"],
      "Address":user["location"]["city"] 
    };
  }).toList();
  return userModel(results: fulldata);
 }
}