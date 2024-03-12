void main() {
  // Type dynamic is mapped in runtime and null values is accepted, 
  //this difficult the mapping of errors and relentize the app (if is used in excess)
  dynamic anyThing = "Hello";
  anyThing = true;
  anyThing = [1, 2, 3, 4];
  anyThing = () => "Lintening...";
  anyThing = {1, "Pepe", true, 89.5};
  print("${anyThing}");
  anyThing = null;
  anyThing += 1;
  // NoSuchMethodError: The method '+' was called on null.
  print(anyThing);
}