Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    if (url.trim().isEmpty) {
      // throw error
      throw "($url) Response not completed because url is empty";
    }
    return "($url) Response success!!!";
  });
}

void main() {
  final rqget = (String url) {
    httpGet(url)
        .then((value) => print(value))
        .catchError((err) => print("Error:\n$err"));
  };
  print("START");
  rqget("https://page.com");
  rqget(" ");
  print("END");
}
