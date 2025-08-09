import "package:flutter/material.dart";
import "package:note_app_flutter/screens/create_note.dart";
// import "package:note_app_flutter/screens/create_note.dart";
import "package:note_app_flutter/utilis/custom_input.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "RemsNotePad",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // Search Box
              CustomInput(
                inputHintText: "Search notes",
                inputPrefixIcon: Icon(Icons.search),
                inputTextController: TextEditingController(),
              ),
              const SizedBox(height: 20),

              // CustomInput(
              //   inputHintText: "Title",
              //   inputPrefixIcon: Icon(Icons.keyboard),
              //   inputTextController: TextEditingController(),
              //   inputKeyboardType: TextInputType.multiline,
              // ),
              // const SizedBox(height: 20),

              // CustomInput(
              //   inputHintText: "Write your note here",
              //   inputPrefixIcon: Icon(Icons.note_add),
              //   inputTextController: TextEditingController(),
              // ),
              // const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      NoteCard(),
                      SizedBox(height: 20),
                      NoteCard(),
                      SizedBox(height: 20),
                      NoteCard(),
                      SizedBox(height: 20),
                      NoteCard(),
                      SizedBox(height: 20),
                      NoteCard(),
                      SizedBox(height: 20),
                      NoteCard(),
                      SizedBox(height: 20),
                      NoteCard(),
                      SizedBox(height: 20),
                      NoteCard(),
                      SizedBox(height: 20),
                      NoteCard(),
                      SizedBox(height: 20),
                      NoteCard(),
                      SizedBox(height: 20),
                      NoteCard(),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateNoteScreen()),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 187, 187, 187),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Design Principles"),
              Text("There are many design principles"),
              Text("Date this was writing: 9th August,2025 11:46 PM"),
            ],
          ),
          Text("Some Images"),
        ],
      ),
    );
  }
}
