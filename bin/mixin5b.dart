void main(List<String> args) {
  //Instanciando y usando un objeto de la clase Gato
  print('Estos son Mamiferos');
  print('-----------------------------------------------');
  print('Gato:');
  Gato timon = Gato();
  timon.yosoy(); //Funcion de la clase Gato (herencia)
  timon.infoAnimal(); //función de la clase Animal (herencia)
  timon.infoMamifero(); //Función de la clase mamifero (herencia)
  timon.caminar(); //Funcion de la clase caminante (mixin)
  print('-------------------------------------------------');
  print('Delfín:');
  Delfin delfino = Delfin();
  delfino.yosoy();
  delfino.infoAnimal();
  delfino.infoMamifero();
  delfino.nadar();
  print('-----------------------------------------------------');
  print('Murcielago:');
  Murcielago batman = Murcielago();
  batman.yosoy();
  batman.infoAnimal();
  batman.infoMamifero();
  batman.volar();
  print('------------------------------------------------------');
  print('');
  print('Estas son Aves');
  print('-------------------------------------------------------');
  print('Paloma:');
  Paloma pichon = Paloma();
  pichon.yosoy();
  pichon.infoAnimal();
  pichon.infoAve();
  pichon.caminar();
  pichon.volar();
  print('-------------------------------------------------------');
  print('Pato:');
  Pato lucas = Pato();
  lucas.yosoy();
  lucas.infoAnimal();
  lucas.infoAve();
  lucas.volar();
  lucas.caminar();
  lucas.nadar();
  print('');
  print('Estos son Peces');
  print('-----------------------------------------------------------');
  print('Tiburon');
  Tiburon tiburonsin = Tiburon();
  tiburonsin.yosoy();
  tiburonsin.infoAnimal();
  tiburonsin.infoPez();
  tiburonsin.nadar();
  print('------------------------------------------------------------');
  print('Pez Volador');
  PezVolador mariano = PezVolador();
  mariano.yosoy();
  mariano.infoAnimal();
  mariano.infoPez();
  mariano.nadar();
  mariano.volar();
  print('-------------------------------------------------------------');
}

abstract class Animal {
  void infoAnimal();
}

abstract class Mamifero extends Animal {
  void infoMamifero();
}

abstract class Ave extends Animal {
  void infoAve();
}

abstract class Pez extends Animal {
  void infoPez();
}

class Caminante {
  void caminar() => print('puedo caminar');
}

class Nadador {
  void nadar() => print('Puedo nadar');
}

class Volador {
  void volar() => print('Se que puedo volar');
}

//Creación de la clase de los tipos especificos de animales
class Gato extends Mamifero with Caminante {
  //Metodos heredados de la clase Animal y mamifero
  @override
  void infoAnimal() {
    print('Soy un animal');
  }

  @override
  void infoMamifero() {
    print('y soy mamifero');
  }

  //Metodo de la clase Gato
  void yosoy() => print('Soy un michi');
}

class Delfin extends Mamifero with Nadador {
  @override
  void infoAnimal() {
    print('Soy un animal');
  }

  @override
  void infoMamifero() {
    print('Soy un mamifero, de los pocos que son acuaticos');
  }

  void yosoy() => print('Soy un Delfin');
}

class Murcielago extends Mamifero with Volador {
  @override
  void infoAnimal() {
    print('Soy un Animal');
  }

  @override
  void infoMamifero() {
    print('Soy un mamifero, de los pocos que pueden volar');
  }

  void yosoy() => print('Soy un Murcielago');
}

//Clase Aves esta siendo representada aqui
class Paloma extends Ave with Caminante, Volador {
  //Metodos heredados de la clase animal y mamifero
  @override
  void infoAnimal() {
    print('Soy un animal');
  }

  @override
  void infoAve() {
    print('Soy un ave');
  }

  //Metodo clase Paloma
  void yosoy() => print('Soy un pichon');
}

class Pato extends Ave with Caminante, Nadador, Volador {
  @override
  void infoAnimal() {
    print('Soy un animal');
  }

  @override
  void infoAve() {
    print(
        'Soy de las pocas aves en el reino animal que puede volar, caminar y nadar');
  }

  void yosoy() => print('Soy un Pato');
}

//La clase Peces esta siendo representada aquí
class Tiburon extends Pez with Nadador {
  @override
  void infoAnimal() {
    print('Soy un animal');
  }

  @override
  void infoPez() {
    print('Soy un pez depredador');
  }

  void yosoy() => print('Soy un tiburón');
}

class PezVolador extends Pez with Nadador, Volador {
  @override
  void infoAnimal() {
    print('Soy un animal');
  }

  @override
  void infoPez() {
    print('Soy un pez, que planea unos segundos fuera del Mar');
  }

  void yosoy() => print('Soy un Pez Volador');
}
