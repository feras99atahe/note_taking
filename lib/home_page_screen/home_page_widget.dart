import 'dart:io';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(

        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.black,
          borderRadius: BorderRadius.circular(20)
        ),
        child: InkWell(onTap: () {
          Navigator.of(context).pushNamed('/note_add');
        },child: Icon(
          Icons.add_circle_outline,
          size: 28,
          color: Colors.white,
        )

        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Note'),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          // Use a function to create an instance of the note widget for each item
          return Note(title: 'hello', content: 'hi');
        },




      ),
    );
  }
}



class Note extends StatelessWidget {
  const Note({super.key,required this.title,required this.content});
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushNamed('/note_preview');
        },
        child: Container(
          decoration: BoxDecoration(color: Colors.grey.shade300,
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          height: 85,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(

              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('title',style: TextStyle(fontSize: 25)),
                    SizedBox(height: 5,),


                    SizedBox(
                      width: 400,

                      child: Text(''
                          ,softWrap: false,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis),
                    ),


                  ],
                ),
                const Spacer(),

                IconButton(onPressed: (){},
                    icon:const Icon(Icons.delete,size: 40,) )
              ],

            ),
          ),
        ),
      ),
    );
  }
}
