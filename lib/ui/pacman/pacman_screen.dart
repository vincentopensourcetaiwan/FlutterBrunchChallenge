import 'package:flutter/material.dart';
import 'package:flutter_brunch_challenge/ui/pacman/barrier_map.dart';

class PacManScreen extends StatefulWidget {
  @override
  _PacManScreenState createState() => _PacManScreenState();
}

class _PacManScreenState extends State<PacManScreen> {

  static int _numberInRow = 11;
  int _numberOfSquares = _numberInRow * 17;

  List _barriers = PacManMap().barriers;

  @override
  Widget build(BuildContext context) {
    ///    小精靈圖檔
    ///    Image.asset("images/pacman.png")
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: GridView.builder(
                itemCount: _numberOfSquares,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _numberInRow,
                ),
                itemBuilder: (BuildContext context, int index) {
                  if (_barriers.contains(index)) {
                    return Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        color: Colors.blue,
                        child: Text('$index'),
                      ),
                    );
                  }

                    return Padding(
                      padding: const EdgeInsets.all(1),
                      child: Container(
                        color: Colors.grey,
                        child: Text('$index'),
                      ),
                    );
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,

              ///              child:   這邊可以放 分數 或 開始遊戲 按鈕
            ),
          ),
        ],
      ),
    );
  }
}
