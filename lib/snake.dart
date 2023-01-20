import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:loginui/settings.dart';
import 'package:loginui/reusable_widgets/reusable_widget.dart';
import 'dart:math';
import 'classes/home.dart';
import 'games_page.dart';
import 'package:loginui/utils/color_utils.dart';
class SnakeGame extends StatefulWidget {
  @override
  _SnakeGameState createState() => _SnakeGameState();
}

class _SnakeGameState extends State<SnakeGame> {
  // Game variables
  late List<Offset> _snakePositions;
  late Offset _foodPosition;
  late double _gridSize;
  late double _blockSize;
  late int _score;
  late int _speed;
  late bool _isGameOver;


  @override
  void initState() {
    super.initState();
    _initGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snake Game"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onVerticalDragUpdate: (details) {
                if (details.delta.direction < 0) {
                  _moveUp();
                } else {
                  _moveDown();
                }
              },
              onHorizontalDragUpdate: (details) {
                if (details.delta.direction > 0) {
                  _moveRight();
                } else {
                  _moveLeft();
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Colors.black),
                ),
                child: CustomPaint(
                  painter: SnakePainter(
                    snakePositions: _snakePositions,
                    foodPosition: _foodPosition,
                    blockSize: _blockSize,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 50.0,
            child: Center(
              child: Text("Score: $_score"),
            ),
          ),
          _isGameOver
              ? Container(
            height: 50.0,
            child: Center(
              child: Text("Game Over"),
            ),
          )
              : Container(),
        ],
      ),
    );
  }

  void _initGame() {
    _snakePositions = [
      Offset(1, 1),
      Offset(1, 2),
      Offset(2, 2),
    ];
    _foodPosition = Offset(5, 5);
    _gridSize = 10;
    _blockSize = 0;
    _score = 0;
    _speed = 500;
    _isGameOver = false;
    _startGame();
  }

  void _startGame() {
    Timer.periodic(Duration(milliseconds: _speed), (timer) {
      setState(() {
        _moveSnake();
        _checkForCollision();
      });
    });
  }

  void _moveUp() {
    _snakePositions.insert(
        0, Offset(_snakePositions.first.dx, _snakePositions.first.dy - 1));
  }

  void _moveDown() {
    _snakePositions.insert(
        0, Offset(_snakePositions.first.dx, _snakePositions.first.dy + 1));
  }

  void _moveLeft() {
    _snakePositions.insert(
        0, Offset(_snakePositions.first.dx - 1, _snakePositions.first.dy));
  }

  void _moveRight() {
    _snakePositions.insert(
        0, Offset(_snakePositions.first.dx - 1, _snakePositions.first.dy));
  }

  void _moveSnake() {
    setState(() {
      _snakePositions.removeLast();
    });
  }
  void _checkForCollision(){
    // check for collision with the edges of the screen
    if(_snakePositions.first.dx < 0 || _snakePositions.first.dx >= _gridSize ||
        _snakePositions.first.dy < 0 || _snakePositions.first.dy >= _gridSize){
      _isGameOver = true;
    }

    // check for collision with itself
    for(int i = 1; i < _snakePositions.length; i++){
      if(_snakePositions.first.dx == _snakePositions[i].dx &&
          _snakePositions.first.dy == _snakePositions[i].dy){
        _isGameOver = true;
      }
    }
  }
}


class SnakePainter extends CustomPainter {
  final List<Offset> snakePositions;
  final Offset foodPosition;
  final double blockSize;

  SnakePainter({
    required this.snakePositions,
    required this.foodPosition,
    required this.blockSize,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.green;

    for (Offset position in snakePositions) {
      canvas.drawRect(
        Rect.fromLTWH(
          position.dx * blockSize,
          position.dy * blockSize,
          blockSize,
          blockSize,
        ),
        paint,
      );
    }

    paint.color = Colors.red;
    canvas.drawRect(
      Rect.fromLTWH(
        foodPosition.dx * blockSize,
        foodPosition.dy * blockSize,
        blockSize,
        blockSize,
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
