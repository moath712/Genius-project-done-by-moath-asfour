import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:loginui/games_page.dart';
void main() {
  runApp(const chess());
}

class chess extends StatelessWidget {
  const chess({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ChessBoardController controller = ChessBoardController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {

            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => games_home()));
          },
        ),
      ),
      body: Center(
        child: ChessBoard(
          controller: controller,
          boardColor: BoardColor.darkBrown,
          boardOrientation: PlayerColor.white,
          onMove: () {
            //
          },

          arrows: [
            BoardArrow(from: "b2", to: "b4", color: Colors.red.withOpacity(0.9))
          ],
        ),

      ),
    );
  }
}
