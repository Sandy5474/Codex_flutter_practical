import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_application/Tasks/Tasks.dart';

import 'package:todo_application/category/category.dart';
import 'package:todo_application/Tasks/taskPage.dart';

class CategoryScreen extends StatefulWidget {
  String? username;
  CategoryScreen({super.key, this.username});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final CollectionReference categoriesref =
        FirebaseFirestore.instance.collection('categories');

    return Scaffold(
      backgroundColor: Color(0xffD6D7EF),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, left: 30),
            child: Text(
              "Hello",
              style: GoogleFonts.abhayaLibre(
                  fontSize: 50, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 110, left: 30),
            child: Text(
              "username",
              style: GoogleFonts.abhayaLibre(
                  fontSize: 50, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 200),
            height: 634,
            width: 414,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Color(0xff0D0C38),
            ),
            child: StreamBuilder<QuerySnapshot>(
              stream: categoriesref.snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }

                final List<Category> categories = snapshot.data!.docs
                    .map((doc) => Category.fromSnapshot(doc))
                    .toList();

                return ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return Container(
                      height: 60,
                      margin: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Slidable(
                        endActionPane:
                            ActionPane(motion: DrawerMotion(), children: [
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
                                        controller: textFieldController,
                                        decoration: InputDecoration(
                                            hintText: category.name),
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          child: const Text('CANCEL'),
                                          onPressed: () {
                                            Navigator.pop(context);
                                            textFieldController.clear();
                                          },
                                        ),
                                        TextButton(
                                          child: const Text('SAVE'),
                                          onPressed: () async {
                                            String newCategoryName =
                                                textFieldController.text;
                                            if (newCategoryName.isNotEmpty) {
                                              await categoriesref
                                                  .doc(category.id)
                                                  .update({
                                                'name': newCategoryName,
                                              });
                                            }

                                            Navigator.pop(context);
                                            textFieldController.clear();
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
                              await categoriesref
                                  .doc(
                                    category.id,
                                  )
                                  .delete();
                            },
                            icon: Icons.delete_outline_rounded,
                          ),
                        ]),
                        child: ListTile(
                          title: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(category.name,
                                      style: GoogleFonts.jost(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromARGB(
                                            255, 15, 15, 16),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Taskpage(
                                  categoryId: category.id,
                                  categoryName: category.name,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(147, 149, 211, 1),
        onPressed: () {
          _showBottomSheet(context, categoriesref);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

void _showBottomSheet(BuildContext context, CollectionReference categoriesRef) {
  final TextEditingController _controller = TextEditingController();

  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40))),
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 40, right: 50),
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 0, left: 55, bottom: 10),
                  child: Text(
                    'Enter Category',
                    style: GoogleFonts.averageSans(
                        fontSize: 17, fontWeight: FontWeight.w400),
                  )),
              Container(
                margin: const EdgeInsets.only(left: 55),
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
              const SizedBox(height: 16.0),
              Container(
                height: 40,
                width: 90,
                margin: EdgeInsets.only(
                    top: 20, left: MediaQuery.of(context).size.width / 2.8),
                child: ElevatedButton(
                    style: ButtonStyle(
                        fixedSize: WidgetStatePropertyAll(const Size(70, 40)),
                        backgroundColor: WidgetStatePropertyAll(
                          const Color.fromRGBO(208, 205, 236, 1),
                        )),
                    onPressed: () async {
                      String categoryName = _controller.text.trim();
                      if (categoryName.isNotEmpty) {
                        await categoriesRef.add({
                          'name': categoryName,
                        });

                        Navigator.pop(context);
                        _controller.clear();
                      }
                    },
                    child: Text(
                      'Add',
                      style: GoogleFonts.averageSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )),
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
