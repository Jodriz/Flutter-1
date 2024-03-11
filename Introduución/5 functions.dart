/**
 * Is important the use explicit types in return and parameters
 */
String greetEveryone() {
  return "Hello everyone!";
}

int addTwoNums(int a, int b) {
  return a + b;
} 
// Arrow functions allow write short functionalities
int lambdaSum(int a, int b) => a + b;
// this other syntax, alow more lines and creates "in hot" funcions
final greet = () {
  return "Hello, this is a greeting :D!";
};

void main() {
  final message = greetEveryone();
  print(message);
  print(addTwoNums(10, 7));
  print(lambdaSum(32, 3));
  // [type var] indicate optional parameter
  helloOptional([String? name]) => "Hello $name";
  print(helloOptional());
  // var ?? value; validate and set a value if the var is null, it is like "default if null"
  helloOptional2([String? name]) {
    name = name??"Unknow :)"; 
    return "Hello ${name}";
  };
  print(helloOptional2()); 
  // Short form of "default if null"
  helloOptional3([String? name]) {
    name ??= "Unknow :)"; 
    return "Hello ${name}";
  };
  print(helloOptional3()); 
  // Can be located ditectly with arrow function
  helloOptional4([String? name]) => "Hello ${name??"Unknow :)"}";
  print(helloOptional4()); 
  // Other form, directly in the parameter declaration
  helloOptional5([String? name = "Unknow :)"]) => "Hello $name";
  print(helloOptional5()); 
}
