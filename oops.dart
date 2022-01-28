void main() {
  Car newCar = Car(year: 3020, isNew: false, model: "Hyundai");
  Car oldCar = Car(model: "Toyota", year: 2012);

  print(newCar.toString());
}

class Car {
  String model;
  int year;
  bool isNew;

  Car({required this.model, required this.year, this.isNew = false});

  void printCar() {
    print("Car model is $model, year is $year, isNew is $isNew");
  }

  void beep() {
    print("Beep beep");
  }

  void brake() {
    print("Slow down");
  }
}
