
import 'package:flutter/material.dart';

//thi is a reload button that used to refresh the game when finish

class GameWidgetReloadBtn extends StatelessWidget {
  const GameWidgetReloadBtn({Key? key, required this.fun}) : super(key: key);
  final Function() fun;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
          onPressed: fun,
          style: ElevatedButton.styleFrom(
              primary: Theme.of(context).hintColor,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10)
          ),
          child: const Center(child: Icon(Icons.refresh,
              size: 35, color: Colors.white))
      ),
    );
  }
}
