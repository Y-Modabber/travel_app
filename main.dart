void main() {
  Pykan pykan = new Pykan();

  pykan.turnedOn();
}

abstract class Car {
  String? name;
  String? cpu;
  String? ram;

  void turnedOn();

  void turnedOff();
}

class Pykan extends Car {
  @override
  void turnedOn() {
    print("object");
    // TODO: implement turnedOn
  }

  @override
  void turnedOff() {
    // TODO: implement turnedOff
  }
}
