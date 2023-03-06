import 'dart:io';

void main() {
  bool status = true;
  double num1 = 0, num2 = 0;
  String? op = " ";
  double total_value = 0;
  int count = 1;
  bool check = true;
  double temp_val = 0;

  print('-------------------------------------------------------------\n');
  print('\t\t\tMATH CALCULATOR\n');
  print('-------------------------------------------------------------\n');
  print('\t\t[+] ADD \t\t[-]SUBTRACTION\n');
  print('\t\t[*] MULTIPLCATION \t[/]DIVISION\n');

  do {
    print('-------------------------------------------------------------');
    print('OPERATION NO. : $count\n');
    userInput(num1, num2, op, total_value, check, temp_val);

    count++;
  } while (status == true);
}

//FOR OPERATION
double? operation(num1, num2, op, total_value, check, temp_val) {
    switch (op) {
      case '+':
        total_value = num1 + num2;
         stdout.write('THE SUM IS : ');
        break;
      case '-':
        total_value = num1 - num2;
         stdout.write('THE DIFFERENCE IS : ');
        break;
      case '*':
        total_value = num1 * num2;
        stdout.write('THE PRODUCT IS : ');
        break;
      case '/':
        total_value = num1 / num2;
         stdout.write('THE QUOTIENT IS : ');
        break;
      default:
        print("INVALID OPERATION1");
        break;
    }
    return total_value;
  }

// FOR USER INPUT
bool? userInput(num1, num2, op, total_value, check, temp_val) {
  bool status = true;
  //print(check);
  try {

      stdout.write("ENTER NUM1 : ");
      num1 = double.parse(stdin.readLineSync()!);

      stdout.write("ENTER NUM2 : ");
      num2 = double.parse(stdin.readLineSync()!);
  } catch (e) {
    print("INVALID INPUT!");
    status = false;
  }

  if (status == false) {
    print('NEXT OPERATION!');
  } else {
    stdout.write("ENTER OPERATION : ");
    op = stdin.readLineSync();
    print('-------------------------------------------------------------');

    errorTrapping(num1, num2, op, total_value, check, temp_val);
  }

  return check;
}

String? errorTrapping(num1, num2, op, total_value, check, temp_val) {
  op == '+' || op == '-' || op == '*' || op == '/'
      ? print(operation(num1, num2, op, total_value, check, temp_val))
      : print('INVALID OPERATOR!');
  return op;
}

