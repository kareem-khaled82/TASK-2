enum Animal { cat, dog, bird, fish }

class Vehicle {
  late int _yearManufactured;
  int get yearManufactured => _yearManufactured;

  set yearManufactured(int year) {
    if (year >= 1886) {
      _yearManufactured = year;
    } else {
      throw ArgumentError('Year must be 1886 or later.');
    }
  }

  late String model;

  Vehicle(this.model, {int? yearManufactured}) : _yearManufactured = yearManufactured ?? 2024;

  void startEngine() {
    print('Engine started for vehicle: $model');
  }

  void stopEngine() => print('Engine stopped for vehicle: $model');
}

class Car extends Vehicle {
  late String _color;

  String get color => _color;

  set color(String newColor) {
    if (newColor.isNotEmpty) {
      _color = newColor;
    } else {
      throw ArgumentError('Color cannot be empty.');
    }
  }

  Car(String model, String color, {int? yearManufactured})
      : _color = color,
        super(model, yearManufactured: yearManufactured ?? 2023);

  @override
  void startEngine() {
    super.startEngine();
    print('Car ignition turned on.');
  }

  void accelerate() => print('Car is accelerating.');
}

void main() {
  Car myCar = Car('Tesla Model S', 'Red', yearManufactured: 2024);
  myCar.color = 'Blue';
  print(myCar.yearManufactured);

  myCar.startEngine();
  myCar.accelerate();
  myCar.stopEngine();

  List<Animal> animals = [Animal.cat, Animal.dog, Animal.bird, Animal.fish];
  print(animals);
}
