Stream<int> emitNums(count_limit) {
  return Stream.periodic(const Duration(seconds: 1), (value){
    return value;
  }).take(count_limit);
}

void main(){
  emitNums(7).listen((event) {
    print(event);
  });
}