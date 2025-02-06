import 'dart:io';

import 'package:calculadora_imc/calculadora_imc.dart';

void main() {
  // Extraindo nome pelo CMD
  stdout.write("Digite seu nome: ");
  String nome = stdin.readLineSync() ?? "";

  // Extraindo peso pelo CMD
  stdout.write("Digite seu peso (kg): ");
  double peso = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  // Extraindo altura pelo CMD
  stdout.write("Digite sua altura (m): ");
  double altura = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  // Verificando se os valores são válidos
  if (peso <= 0 || altura <= 0) {
    print("Valores inválidos! Certifique-se de inserir números válidos.");
    return;
  }

  // Arredondando os valores para duas casas decimais
  peso = double.parse(peso.toStringAsFixed(2));
  altura = double.parse(altura.toStringAsFixed(2));

  /// Criando o objeto da calculadora e exibindo o resultado
  PessoaIMC pessoa = PessoaIMC(nome: nome, peso: peso, altura: altura);
  pessoa.exibeResultado();
}
