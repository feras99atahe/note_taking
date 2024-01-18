import 'package:flutter/material.dart';




class NotePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Note App'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            // Handle back button press
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        alignment: Alignment.topLeft,
        child: Text('add your text here '),
      ),

    );
  }
}
