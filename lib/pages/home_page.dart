import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/model/todo_item.dart';
import 'package:flutter_application_4/pages/random_page.dart';

class HomePage extends StatelessWidget {
  late final List<TodoItem> allItens;

  HomePage() {
    allItens = List.generate(30, (index) {
      return TodoItem(
        title: "Item ${index}",
        description: "Description ${index}",
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RandomPage()),
            );
            //
          },
          child: Text("Random", style: TextStyle(fontSize: 36)),
        ),
      ),
    );
  }
}
