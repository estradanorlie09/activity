import 'dart:io';
import 'dart:math';

void main() {
  int luckyNumber = 0;
  int user_choice = 0;
  int user_mode_choice = 0;
  String playerName = ' ';
  bool exit = false;
  List<int> wew = [3];
  //print(randomNumber(luckyNumber));

  // stdout.write('ENTER YOUR 3 LUCKY GUESS : ');
  // for (int i = 1; i <= wew.length; i++) {
  //   stdout.write('\nGUESS NO. $i: ');
  //   wew[i] = int.parse(stdin.readLineSync()!);
    
  // }

  do {
    print('------------------------------------------------------------------');
    print('\t\t\tGUESSING GAME');
    print('------------------------------------------------------------------');
    print('\tSELECT CATEGORY : ');
    print('\t[1] - SOLO PLAYER \t\t[2] - MULTIPLAYER');
    print('------------------------------------------------------------------');

    stdout.write('SELECT CATEGORY : ');
    user_choice = int.parse(stdin.readLineSync()!);

    stdout.write('ENTER PLAYER NAME : ');
    playerName = stdin.readLineSync()!;

    try {
      if (user_choice == 1) {
        print(
            '------------------------------------------------------------------');
        print('\t\t\tGUESSING GAME');
        print(
            '------------------------------------------------------------------');
        print('  MODE : ');
        print('\t[1] - EASY \t[2] - MEDIUM \t[3] - HARD');
        print(
            '------------------------------------------------------------------');

        stdout.write('SELECT MODE : ');
        user_mode_choice = int.parse(stdin.readLineSync()!);
        try {
          if (user_mode_choice == 1) {
            easy(luckyNumber, playerName);
            exit = retry(exit)!;
          } else if (user_mode_choice == 2) {
            medium(luckyNumber, playerName);
            exit = retry(exit)!;
          }
        } catch (e) {
          print('INVALID INPU1');
        }
      }
    } catch (e) {
      print('INVALID INPUT!');
    }
  } while (exit);
}

void easy(luckyNumber, playerName) {
  //int lives = 5;
  int guess = 0;
  int ctr = 5;
  int? mysteryNum = randomNumber(luckyNumber);
  print(mysteryNum);

  print('------------------------------------------------------------------');
  print('\t\t\tGUESSING GAME');
  print('------------------------------------------------------------------');

  stdout.write('GAME MODE : EASY \t\t');
  stdout.write('\nPLAYER NAME : ');
  stdout.write('$playerName');
  stdout.write('\t\t\tGUESS FROM 1 - 100');
  print('\n------------------------------------------------------------------');
  do {
    stdout.write('REMAINING GUESS : $ctr');
    stdout.write('\nENTER YOUR GUESS : ');
    guess = int.parse(stdin.readLineSync()!);
    stdout.write('RESULT : ');
    if (guess > 100 || guess < 1) {
      print(
          '\n------------------------------------------------------------------');
      print('INALID! YOUR INPUT IS GREATER THAN 100 OR LESSTHAN 1');
      print(
          '------------------------------------------------------------------');
    } else {
      if (guess > mysteryNum!) {
        print('TOO HIGH!');
        ctr--;
      } else if (guess < mysteryNum) {
        print('TOO LOW!');
        ctr--;
      } else if (guess == mysteryNum) {
        print('CONGRATULATIONS! YOU WIN!');
        print(
            '------------------------------------------------------------------');
        break;
      }
      print(
          '------------------------------------------------------------------');
      if (ctr < 1) {
        print('YOU LOSE ! THE GAME IS OVER!');
        print(
            '------------------------------------------------------------------');
        break;
      }
    }
  } while (true);
}

void medium(luckyNumber, playerName) {
  //int lives = 5;
  int guess = 0;
  int ctr = 5;
  int? mysteryNum = randomNumber(luckyNumber);
  print(mysteryNum);
  List<int> num = [3];

  print('------------------------------------------------------------------');
  print('\t\t\tGUESSING GAME');
  print('------------------------------------------------------------------');

  stdout.write('GAME MODE : MEDIUM \t\t');
  stdout.write('\nPLAYER NAME : ');
  stdout.write('$playerName');
  stdout.write('\t\t\tGUESS FROM 1 - 100');
  print('\n------------------------------------------------------------------');
  do {
    stdout.write('ENTER YOUR 3 LUCKY GUESS : ');
    for (int i = 1; i <= num.length; i++) {
      stdout.write('\nGUESS NO. $i: ');
      guess = int.parse(stdin.readLineSync()!);
      num[i] = guess;
    }
  } while (true);
}

int? randomNumber(luckyNumber) {
  Random rn = new Random();
  return luckyNumber = rn.nextInt(100) + 1;
}

bool? retry(exit) {
  String check;
  stdout.write('DO YOU WANT TO TRY AGAIN? [Y/N / y/n] : ');
  check = stdin.readLineSync()!;
  print('------------------------------------------------------------------');
  if (check == 'Y' || check == 'y') {
    exit = true;
    return exit;
  } else {
    exit = false;
    print('THANK YOU!');
    return exit;
  }
}
