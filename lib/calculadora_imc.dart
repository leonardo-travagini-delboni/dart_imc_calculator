class PessoaIMC {
  // Atributos
  String nome;
  double altura;
  double peso;

  // Construtor
  PessoaIMC({required this.nome, required this.altura, required this.peso});

  // Métodos (a partir daqui)

  // Método 1 - Calcula o IMC
  double calculaIMC() {
    double res = peso / (altura * altura);
    return double.parse(res.toStringAsFixed(2));
  }

  // Método 2 - Classifica o IMC
  String classificaIMC() {
    double imc = calculaIMC();
    String? msg = '';
    if (imc < 16.0) {
      msg = 'Magreza grave';
    } else if (imc >= 16.0 && imc < 17.0) {
      msg = 'Magreza moderada';
    } else if (imc >= 17.0 && imc < 18.5) {
      msg = 'Magreza leve';
    } else if (imc >= 18.5 && imc < 25) {
      msg = 'Saudável';
    } else if (imc >= 25.0 && imc < 30.0) {
      msg = 'Sobrepeso';
    } else if (imc >= 30.0 && imc < 35.0) {
      msg = 'Obesidade Grau 1 - Moderada';
    } else if (imc >= 35.0 && imc < 40.0) {
      msg = 'Obesidade Grau 2 - Severa';
    } else {
      msg = 'Obesidade Grau 3 - Mórbida';
    }
    return msg;
  }

  // Método 3 - Exibe o resultado
  void exibeResultado() {
    print("Olá, $nome! Seu IMC é: ${calculaIMC().toStringAsFixed(2)}");
    print("Classificação: ${classificaIMC()}");
  }
}
