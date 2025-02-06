import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {
  test('calculaIMC', () {
    PessoaIMC pessoa = PessoaIMC(nome: 'João', peso: 70.0, altura: 1.75);
    expect(pessoa.calculaIMC(), 22.86);
  });

  test('classificaIMC', () {
    PessoaIMC pessoa = PessoaIMC(nome: 'João', peso: 70.0, altura: 1.75);
    expect(pessoa.classificaIMC(), 'Saudável');
  });
}
