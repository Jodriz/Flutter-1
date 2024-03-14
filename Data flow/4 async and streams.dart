/**
 * Stream is a representation that allows the handling of data with ETL(Extract-Tranform-Load) operations and concurrency features   
 * "async*" allow implicit operations with streams
 */
Stream<String> names_to_yield(List<String> names) async* {
  for (var name in names) {
    await Future.delayed(const Duration(seconds: 1));
    // "yield" allow concurrency, it's a return of data slices
    yield name;
  }
}

void main() {
  final names = ["Pepito", "Griffith", "Pablo", "Guts", "Kafka"];
  names_to_yield(names).listen((val) {
    print(val);
  });
}
