

class ProductModal{
  Address? address;
  int? age;
  Bank? bank;
  String? birthDate;
  String? bloodGroup;
  Company? company;
  Crypto? crypto;
  String? domain;
  String? ein;
  String? email;
  String? eyeColor;
  String? firstName;
  String? gender;
  Hair? hair;
  int? height;
  int? id;
  String? image;
  String? ip;
  String? lastName;
  String? macAddress;
  String? maidenName;
  String? password;
  String? phone;
  String? ssn;
  String? university;
  String? userAgent;
  String? username;
  num? weight;

  ProductModal({
    required this.address,
    required this.age,
    required this.bank,
    required this.birthDate,
    required this.bloodGroup,
    required this.company,
    required this.crypto,
    required this.domain,
    required this.ein,
    required this.email,
    required this.eyeColor,
    required this.firstName,
    required this.gender,
    required this.hair,
    required this.height,
    required this.id,
    required this.image,
    required this.ip,
    required this.lastName,
    required this.macAddress,
    required this.maidenName,
    required this.password,
    required this.phone,
    required this.ssn,
    required this.university,
    required this.userAgent,
    required this.username,
    required this.weight
  });

factory ProductModal.fromJson({required Map<String,dynamic>Json}){
  return ProductModal(
      address: Address.fromJson(Json["address"]),
      age: Json["age"],
      bank: Bank.fromJson(Json["bank"]),
      birthDate: Json["birthDate"],
      bloodGroup: Json["bloodGroup"],
      company:Company.fromJson( Json["company"]),
      crypto: Crypto.fromJson(Json["crypto"]),
      domain: Json["domain"],
      ein: Json["ein"],
      email: Json["email"],
      eyeColor: Json["eyeColor"],
      firstName: Json["firstName"],
      gender: Json["gender"],
      hair: Hair.fromJson(Json["hair"]),
      height: Json["height"],
      id: Json["id"],
      image: Json["image"],
      ip: Json["ip"],
      lastName: Json["lastName"],
      macAddress: Json["macAddress"],
      maidenName: Json["maidenName"],
      password: Json["password"],
      phone: Json["phone"],
      ssn: Json["ssn"],
      university: Json["university"],
      userAgent: Json["userAgent"],
      username: Json["username"],
      weight: Json["weight"]);
}

}


// hair

class Hair {
  String? color;
  String? type;

  Hair({required this.color, required this.type});

  factory Hair.fromJson(Map<String, dynamic> json) {
    return Hair(color: json["color"],
        type: json["type"]);

  }
}

//crypto

class Crypto {
  String? coin;
  String? wallet;
  String? network;

  Crypto({required this.coin, required this.wallet, required this.network});

  factory Crypto.fromJson(Map<String, dynamic> json) {
    return Crypto(coin: json["coin"],
        wallet: json["wallet"],
        network: json["network"]);

  }

}

//company
class Company {

  Address? address;
  String? department;
  String? name;
  String? title;

  Company({required this.address, required this.department,
    required this.name,required this.title});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(address:Address.fromJson( json["address"]),
        department: json["department"],
        name: json["name"],
        title: json["title"]);
  }
}



//address

class Address {
  String? address;
  String? city;
  Coordinates? coordinates;
  String? postalCode;
  String? state;

  Address({required this.address, required this.city, required this.coordinates,
        required this.postalCode, required this.state});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
        address: json["address"],
        city: json["city"],
        coordinates: Coordinates.fromJson(json["coordinates"]),
        postalCode: json["postalCode"],
        state: json["state"]);
}}

///address cordinates

class Coordinates {
  num? lat;
  num? lng;

  Coordinates({required this.lat, required this.lng});

  factory Coordinates.fromJson(Map<String,dynamic> json) {
  return Coordinates(lat: json["lat"],
      lng: json["lng"]);

  }}





//bank

class Bank {
  String? cardExpire;
  String? cardNumber;
  String? cardType;
  String? currency;
  String? iban;

  Bank(
      {required this.cardExpire,
        required this.cardNumber,
        required this.cardType,
        required this.currency,
        required this.iban});

  factory Bank.fromJson(Map<String, dynamic> json) {
    return Bank(cardExpire: json["cardExpire"],
        cardNumber: json["cardNumber"],
        cardType: json["cardType"],
        currency: json["currency"],
        iban: json["iban"]);
  }

}
