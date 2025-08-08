import "package:flutter/material.dart";
import "package:note_app_flutter/screens/create_note.dart";
import "package:note_app_flutter/utilis/custom_input.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("RemsNotePad"),
          const SizedBox(height: 20),
          // Search Box
          CustomInput(),
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(12),
            child: CreateNoteScreen(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
