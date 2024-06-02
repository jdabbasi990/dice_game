import 'dart:math';
import 'dart:io';

import 'package:dice_game/Constants/constants.dart';

class DiceLogic {
  int _round = 10;
  int _diceNumber = 0;
  int playerPoints = 0;
  int rivalpoints = 0;
  var random = Random().nextInt(6) + 1;

  void _displayHeader() {
    for (var element in header) {
      print(element);
    }
    print("");
    print("");
  }

  void _displayHelpMessage() {
    print(helpMessage);
  }

  void diceLogicFunc() {
    _displayHeader();
    _displayHelpMessage();
  }
}
