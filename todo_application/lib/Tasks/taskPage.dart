import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_application/Tasks/Tasks.dart';

class Taskpage extends StatelessWidget {
  final String categoryName;
  final String categoryId;

  Taskpage({
    super.key,
    required this.categoryId,
    required this.categoryName,
  });

  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final CollectionReference tasksRef =
        FirebaseFirestore.instance.collection('tasks');

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 178, 180, 206),
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: const Color.fromRGBO(27, 26, 85, 1),
        centerTitle: true,
        title: Text(
          categoryName,
          style: GoogleFonts.jost(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: tasksRef.where('categoryId', isEqualTo: categoryId).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final List<Tasks> tasks = snapshot.data!.docs
              .map((doc) => Tasks.fromSnapshot(doc))
              .toList();

          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];
              return Container(
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Slidable(
                  endActionPane: ActionPane(motion: DrawerMotion(), children: [
                    SlidableAction(
                      onPressed: (context) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                  'Edit Category',
                                  style: GoogleFonts.averageSans(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400),
                                ),
                                content: TextField(
                                  controller: _textFieldController,
                                  decoration:
                                      InputDecoration(hintText: task.title),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('CANCEL'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      _textFieldController.clear();
                                    },
                                  ),
                                  TextButton(
                                    child: const Text('SAVE'),
                                    onPressed: () async {
                                      String newCategoryName =
                                          _textFieldController.text;
                                      if (newCategoryName.isNotEmpty) {
                                        await tasksRef.doc(task.id).update({
                                          'name': newCategoryName,
                                        });
                                      }

                                      Navigator.pop(context);
                                      _textFieldController.clear();
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                      icon: Icons.edit_outlined,
                    ),
                    SlidableAction(
                      onPressed: (context) async {
                        await tasksRef
                            .doc(
                              task.id,
                            )
                            .delete();
                      },
                      icon: Icons.delete_outline_rounded,
                    ),
                  ]),
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 140,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(task.title,
                                  style: GoogleFonts.jost(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: const Color.fromARGB(
                                          255, 13, 14, 14))),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Checkbox(
                                value: task.isCompleted,
                                onChanged: (newValue) async {
                                  await tasksRef.doc(task.id).update({
                                    'isCompleted': newValue,
                                  });
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(147, 149, 211, 1),
        onPressed: () {
          _showBottomSheet(context, tasksRef);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showBottomSheet(BuildContext context, CollectionReference tasksRef) {
    final TextEditingController _controller = TextEditingController();

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 40),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 55),
                  child: Text(
                    "Enter Task",
                    style: GoogleFonts.averageSans(
                        fontSize: 17, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 55, vertical: 5),
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(208, 205, 236, 1),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                            borderSide: BorderSide.none)),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                      onPressed: () async {
                        String taskTitle = _controller.text;

                        if (taskTitle.isNotEmpty) {
                          await tasksRef.add({
                            'categoryId': categoryId,
                            'categoryName': categoryName,
                            'title': taskTitle,
                            'isCompleted': false,
                          });

                          Navigator.pop(context);
                          _controller.clear();
                        }
                      },
                      child: Text(
                        "Add",
                        style: GoogleFonts.averageSans(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400),
                      ),
                      style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                              Color.fromRGBO(208, 205, 236, 1)),
                          fixedSize: WidgetStatePropertyAll(Size(100, 40))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
