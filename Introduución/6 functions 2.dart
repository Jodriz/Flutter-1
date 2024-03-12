/**
 * It's an optional syntax, optional paramaters must always come last
 */
helloAny([String name = "Unknow"]) {
  print("Hi, $name!");
}

/**
 * Sometimes it's necessary to make a parameter pass explicit, for this 
 * we enclose the declaration of parameters in braces.
 * This form so allows optional parameters and mutable order. 
 */
greetPerson({String name = "Unknow", String greeting = "Hello,"}) {
  print("$greeting $name");
}
/**
 * We can also assing parameters as obligatory
 */
greetPerson2({required String name, String greeting = "Hello,"}) {
  print("$greeting $name");
}
/**
 * Here name can be null
 */
greetPerson2Nullable({required String? name, String greeting = "Hello,"}) {
  print("$greeting $name");
}

void main() {
  helloAny();
  helloAny("Jos");
  greetPerson();
  greetPerson(name: "Jos");
  greetPerson(greeting: "Good morning", name: "Jos");
  greetPerson2(name: "Morochito");
  greetPerson2Nullable(name: null);
}
