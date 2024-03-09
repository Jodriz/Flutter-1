void main() {
  final Map<String, dynamic> pokemon = {
    "name": "Ditto",
    "hp": 150,
    "isAlive": true,
    "abilities": <String>["impostor"],
    "sprites":{
      1:"ditto/front.png",
      2:"ditto/back.png"
    }
  };
  print(pokemon);
  print("Name: ${pokemon["name"]}");
  print("First ability: ${pokemon["abilities"][0]}");
  print("Front: ${pokemon["sprites"][1]}");
  print("Back: ${pokemon["sprites"][2]}");
}
