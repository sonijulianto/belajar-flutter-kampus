import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Row'),
      ),
      body: Row(
        children: [
          Text('Row 1'),
          Text('Row 2'),
          Text('Row 3'),
          Text('Row 4'),
        ],
      ),
    );
  }
}