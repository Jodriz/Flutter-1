class Hero {
  String name;
  String power;
  bool isAlive;
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  Hero.fromJson(Map<String, dynamic> json):
  this.name = json["name"]??"Unknow",
  this.power = json["power"]??"Unknow",
  this.isAlive = json["isAlive"]??false;

  @override
  String toString() {
    return "$name has the power of $power, and is ${isAlive?'alive':'dead'}.";
  }
}
void main(){
  final Map<String, dynamic> json = {
    "name":"Spiderman",
    "power":"Climb walls",
    "isAlive":true
  }; 
  final Hero iroman = Hero(name: "Tony Stark", power: "Money", isAlive: false);
  final Hero hero = Hero.fromJson(json);
  print(hero);
  print(iroman);
  print(Hero.fromJson({}));
}