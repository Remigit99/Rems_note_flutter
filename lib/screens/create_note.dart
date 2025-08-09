import 'package:flutter/material.dart';
// import 'package:note_app_flutter/utilis/custom_input.dart';

class CreateNoteScreen extends StatefulWidget {
  const CreateNoteScreen({super.key});

  @override
  State<CreateNoteScreen> createState() => _CreateNoteScreenState();
}

class _CreateNoteScreenState extends State<CreateNoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Time of creating the note
          Text("August 8, 2025 03:53 PM"),
          SizedBox(height: 20),
          // CustomInput(),
          SizedBox(height: 20),
          // CustomInput(),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [

      //   ],
      // ),
    );
  }
}
