import 'dart:io';

void main() {
  double user_input = 0.0;
  double fahrenheit = 0.0;
  double? cel = 0.0;

  stdout.write('ENTER NUMBER YOU WANT TO CONVERT  : ');
  user_input = double.parse(stdin.readLineSync()!);

  stdout.write('FAHRENHEIT : ');
  fahrenheit = getFahrenheit(user_input, fahrenheit, cel)!;
  print(getFahrenheit(user_input, fahrenheit, cel));

  stdout.write('CELCIUS : ');
  print(getCel(user_input, fahrenheit, cel));
}

double? getFahrenheit(user_input, fahrenheit, cel) {
  return fahrenheit = (user_input * 9 / 5) + 32;
}

double? getCel(user_input, fahrenheit, cel) {
  return cel = (fahrenheit - 32) * 5 / 9;
}
