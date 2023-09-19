import 'dart:io';

void main(List<String> arguments) {
  print('Olá, seja bem vindo a sua calculadora de IMC');

  stdout.write('Digite seu peso em Kg (Ex.: 70.5): ');
  double peso = double.parse(stdin.readLineSync()!);

  stdout.write('Digite sua altura em metros (Ex.: 1.70): ');
  double altura = double.parse(stdin.readLineSync()!);

  double imc = peso / (altura * altura);

  print('Seu IMC é ${imc.toStringAsFixed(2)}');

  if (imc < 16) {
    print('MAGREZA GRAVE, TENHA CUIDADO!');
  } else if (imc < 17) {
    print('MAGREZA MODERADA');
  } else if (imc < 18.5) {
    print('MAGREZA LEVE');
  } else if (imc < 25) {
    print('SAUDÁVEL');
  } else if (imc < 30) {
    print('SOBREPESO');
  } else if (imc < 35) {
    print('OBESIDADE GRAU I');
  } else if (imc < 40) {
    print('OBESIDADE GRAU II - SEVERA');
  } else {
    print('OBESIDADE GRAU III - MÓRBIDA');
  }
}
