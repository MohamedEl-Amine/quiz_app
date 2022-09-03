import 'package:flutter/material.dart';

class ansewersButton extends StatelessWidget {
  final VoidCallback? fun;
  final name;
  ansewersButton(this.fun, this.name);
  void amine() {
    print("amine");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green[400],
          alignment: Alignment.center,
        ),
        onPressed: fun,
        child: Text(name),
      ),
    );
  }
}


// 4:30