class Person{
  String name;
  int age;
  Person({
    this.name = "Unknow",
    required this.age
  });
  @override
  String toString() {
    return "User(name: $name, age: $age)";
  }
}
void main(){
  Person p = new Person(age: 18);
  Person p2 = new Person(name: "Pepito", age: 25);
  print(p);
  print(p2);
}