/**
 * Mixins allow tranversal implementations
 */
enum AnimalKind {
  fish, bird, mammal
}
abstract class Animal {
  final AnimalKind kind;
  final String name;
  Animal({required AnimalKind kind, required String name}): this.kind = kind, this.name = name; 
  List<String> can();
  @override
  String toString() {
    final String abilities = can().reduce((value, element) => value+", "+element);
    return "I'm a ${kind.name}, my name is $name and can $abilities";
  }
}
abstract class Fish extends Animal {
  Fish({required String name}): super(kind: AnimalKind.fish, name: name);
}

abstract class Bird extends Animal {
  Bird({required String name}): super(kind: AnimalKind.bird, name: name);
}

abstract class Mammal extends Animal {
  Mammal({required String name}): super(kind: AnimalKind.mammal, name: name);
}

// walk, fly, swim
mixin class Swimmer {
  void swim(){
    print("I'm swiming in the water :).");
  }
}

mixin class Flyer {
  void fly() {
    print("I'm flying from a fire.");
  }
}

mixin class Walker {
  void walk() {
    print("Walking for the park.");
  }
}

class Dolphin extends Mammal with Swimmer{
  Dolphin():super(name:"Dolphin");
  @override
  List<String> can() {
    return ["swim"];
  }
}
class Bat extends Mammal with Flyer, Walker  {
  Bat():super(name:"Bat");

  @override
  List<String> can() {
    return ["fly", "walk"]; 
  }
  
}
class Cat extends Mammal with Walker {
  Cat():super(name:"Cat");

  @override
  List<String> can() {
    return ["walk"];
  }
}
class Dove extends Bird with Flyer {
  Dove():super(name:"Dove");

  @override
  List<String> can() {
    return ["fly"];
  }
}
class Duck extends Bird with Flyer, Swimmer, Walker {
  Duck():super(name:"Duck");

  @override
  List<String> can() {
    return ["fly", "swim", "walk"];
  }
}
class Shark extends Mammal with Swimmer {
  Shark():super(name:"Shark");
  
  @override
  List<String> can() {
    return ["swim"];
  }
}

class FlyingFish extends Fish with Flyer, Swimmer{
  FlyingFish():super(name:"Flying-fish");

  @override
  List<String> can() {
    return ["fly", "swim"];
  }
}

void main() {
  List<Animal> animals = <Animal>[FlyingFish(), Shark(), Duck(), Dove(), Cat(), Bat(), Dolphin()];
  for (var animal in animals) {
      print(animal);
  }
}