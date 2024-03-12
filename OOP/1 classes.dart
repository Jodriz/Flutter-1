/**
 * Classes are of main concepts of Objects Oriented Programing (OOP), allow the representation of any real-world object in programming 
 **/
 class Hero {
  String name;
  String power;

  /**
   * The declared constructor can also be represented as follows:
   *  Hero(this.name, this.power)
   */
  Hero(String name, String power): 
      this.name = name, 
      this.power = power;
  
  @override
  String toString() {
    return "name: $name, power: $power";
  }

 }

 void main() {
  Hero hero = Hero("Spiderman", "Drink quaker");
  print(hero);
 }