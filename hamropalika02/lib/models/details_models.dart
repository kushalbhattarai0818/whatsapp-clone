class Details{

   String?name;
    String?address;
     String?email;
      String?phone;
       String?gender;
        String?ward;

  Details({ this.name,
    this.address,
     this.email, 
     this.phone,
      this.gender,
       this.ward});

       Details.fromjson(Map<String, dynamic> json){

        name=json['name'];
        address=json['address'];
        email=json['email'];
        phone=json['phone'];
        gender=json['gender'];
        ward=json['ward'];
       }

       
  toJson(Details details) {
    Map<String, dynamic> json = {};

    json['name'] = details.name;
    json['address'] = details.address;
    json['email'] = details.email;
    json['phone'] = details.phone;
    json['gender'] = details.gender;
    json['ward'] = details.ward;

  return json;

  }

}