import 'dart:async';
import 'dart:math';
import 'dart:io';

import 'package:dice_game/Constants/constants.dart';

class DiceLogic {
  int _round = 1;
  int _diceNumber = 0;
  int _playerPoints = 0;
  int _rivalpoints = 0;
  int _random = 0;
  // var _random = Random();

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

  Future<void> diceLogicFunc() async {
    _displayHeader();
    _displayHelpMessage();
    stdout.write("Press any key to continue... ");
    // stdin.echoMode = false; // Optional: Disable echoing of pressed key
    int? key = await stdin.readByteSync();

    while (_round <= 10) {
      print('');

      print('-------------- Round: $_round --------------');
      _random = Random().nextInt(6) + 1;
      print('Computer rolled $_random');
      int computerRandom = _random;
      print('');

      print('Press any key to roll your dice');
      int? key = await stdin.readByteSync();
      _random = Random().nextInt(6) + 1;
      print('Player rolled $_random');
      int playerRandom = _random;
      print('');

      if (playerRandom < computerRandom) {
        _rivalpoints++;
        print('Rival score: $_rivalpoints and Player score: $_playerPoints');
      } else if (playerRandom > computerRandom) {
        _playerPoints++;
        print('Rival score: $_rivalpoints and Player score: $_playerPoints');
      } else {
        print(
            'Round draw! No points increase. Rival score: $_rivalpoints and Player score: $_playerPoints');
      }
      // round incrementor
      _round++;
    }
    print('');
    winnerMessage(_playerPoints, _rivalpoints);
    print('');
  }

  String winnerMessage(int _playerPoints, int _rivalpoints) {
    if (_playerPoints > _rivalpoints) {
      return 'Player wins!';
    } else if (_playerPoints < _rivalpoints) {
      return 'Computer wins!';
    } else {
      return 'Game Draw';
    }
  }
}
