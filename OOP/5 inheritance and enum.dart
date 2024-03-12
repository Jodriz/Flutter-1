enum PlantType {nuclear, wind, water}
abstract class EnergyPlant {
  double energyLeft;
  final PlantType kind;
  EnergyPlant({
    required this.energyLeft,
    required this.kind
  });
  void consume(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double energyLeft}):  
            super(energyLeft: energyLeft, kind: PlantType.wind);

  @override
  void consume(double amount) {
    energyLeft =- amount;
  }
}
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  final PlantType kind = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});
  
  @override
  void consume(double amount) {
    energyLeft =- (amount*0.5);
  }
}

class ChargerEnergy {
  double energy;
  int n_plants;
  ChargerEnergy({double energy = 0, int n_plants = 0}):
                assert(n_plants>=0, "'n_plants' cannot be < 0"), 
                this.energy = energy, 
                this.n_plants = n_plants;
  void collect(Iterable<EnergyPlant> plants){
    n_plants += plants.length; 
    for (EnergyPlant plant in plants) {
      energy +=  plant.energyLeft;
    }
  }
  @override
  String toString() {
    return "Energy of $n_plants plants: $energy";
  }
}

void main() {
  WindPlant windPlant = WindPlant(energyLeft: 50);
  WindPlant nuclearPlant = WindPlant(energyLeft: 90);
  ChargerEnergy chargerEnergy = ChargerEnergy();
  chargerEnergy.collect([windPlant, nuclearPlant]);
  print(chargerEnergy);
}