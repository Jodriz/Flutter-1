Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  if (url.trim().isEmpty) {
    // throw error
    throw "($url) Response not completed because url is empty";
  }
  return "($url) Response success!!!";
}

void main() {
  /**
   * "async" allows us work with promises using "await" and implicit instances of "Future". 
   * As you might infer, "async" also can be put in "main" function 
   */
  final rqget = (url) async {
    final String value = await httpGet(url);
    try {
      print(value);
    } catch (err) {
      print("Error:\n$err");
    }
  };
  print("START");
  rqget("https://page.com");
  rqget(" ");
  print("END");
}
