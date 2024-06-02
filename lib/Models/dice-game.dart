import 'package:dice_game/Models/dice-logic.dart';

class DiceGame {
  var _diceLogic = DiceLogic();

  void startEvent() {
    _diceLogic.diceLogicFunc();
  }
}
