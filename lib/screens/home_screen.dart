import "package:flutter/material.dart";
// import "package:note_app_flutter/screens/create_note.dart";
import "package:note_app_flutter/utilis/custom_input.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("RemsNotePad"),
            const SizedBox(height: 20),
            // Search Box
            CustomInput(
              inputHintText: "Search notes",
              inputPrefixIcon: Icon(Icons.search),
              inputTextController: TextEditingController(),
            ),
            const SizedBox(height: 20),

            CustomInput(
              inputHintText: "Title",
              inputPrefixIcon: Icon(Icons.keyboard),
              inputTextController: TextEditingController(),
              inputKeyboardType: TextInputType.multiline,
            ),
            const SizedBox(height: 20),

            CustomInput(
              inputHintText: "Write your note here",
              inputPrefixIcon: Icon(Icons.note_add),
              inputTextController: TextEditingController(),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
