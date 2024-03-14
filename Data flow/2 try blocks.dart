/**
 * For this demo, an error trigger has been added.
 */
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  url = url.trim();
  if (url.isEmpty) {
    // throw exception
    throw Exception("($url) Response not completed because url is empty.");
  }
  if (!url.startsWith("https")) {
    throw "($url) This isn't an url valid.";
  }
  // throw error
  return "($url) Request successfully attended!!!";
}

void main() {
  /**
   * "async" allows us work with promises using "await" and implicit instances of "Future". 
   * As you might infer, "async" also can be put in "main" function 
   */
  final rqget = (url) async {
    try {
      final String value = await httpGet(url);
      print("Success:\n$value");
      // Could check only if "Exception" is triggered, it's ignored the information, omiting "catch(err)"
    } on Exception catch (exc) {
      print("$exc");
    } catch (err) {
      print("Error:\n$err");
    } finally {
      // "finally" allways is execute, it's ensure
      print("finally always runs.\n");
    }
  };
  print("START");
  rqget("https://page.com");
  rqget(" ");
  rqget("jsjsjs");
  print("END");
}
