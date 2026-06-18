
void main() {


  List<Animal> animales = [
    Perro(),
    Gato(),
  ];

  for (Animal animal in animales) {
    animal.hacerSonido();

    // Uso de is y as
    if (animal is Perro) {
      Perro perro = animal as Perro;
      perro.correr("Rápidamente"); // Parámetro posicional
    }

    if (animal is Gato) {
      Gato gato = animal as Gato;
      gato.dormir(horas: 5); // Parámetro nombrado
    }

    print("----------------");
  }
}


class Animal {

  void hacerSonido() {
    print("El animal hace un sonido");
  }
}


class Perro extends Animal {

  @override
  void hacerSonido() {
    print("El perro ladra");
  }

  // Parámetro posicional
  void correr(String velocidad) {
    print("El perro corre $velocidad");
  }
}


class Gato extends Animal {

  @override
  void hacerSonido() {
    print("El gato maúlla");
  }

  // Parámetro nombrado
  void dormir({required int horas}) {
    print("El gato duerme $horas horas");
  }
}