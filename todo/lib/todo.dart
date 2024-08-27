import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();

  void _isempty() {
    titlecontroller.text = "";
    descriptioncontroller.text = "";
  }

  void addToDoList() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          margin: EdgeInsets.all(10),
          child: SizedBox(
            height: 200,
            width: double.infinity,
            child: Column(
              children: [
                TextFormField(
                  initialValue: '',
                  decoration: InputDecoration(label: Text("Task")),
                  onChanged: (value) {
                    titlecontroller.text = value;
                    setState(() {});
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  initialValue: '',
                  decoration: InputDecoration(label: Text("Task")),
                  onChanged: (value) {
                    descriptioncontroller.text = value;
                    setState(() {});
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        addData();
                      });
                      Navigator.pop(context);
                    },
                    child: Text("Save"))
              ],
            ),
          ),
        );
      },
    );
  }

  void editList(int index) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 200,
          width: double.infinity,
          child: Column(
            children: [
              TextFormField(
                initialValue: data[index],
                onChanged: (value) {
                  data[index] = value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    Navigator.pop(context);
                  },
                  child: Text('Save'))
            ],
          ),
        );
      },
    );
  }

  void addData() {
    data.add(userdata);
  }

  void todeleteList(int index) {
    delete = data..removeWhere((element) => element == data[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TodoList"),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: const Color.fromARGB(255, 69, 66, 69),
              ),
              height: 50,
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        data[index],
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                  IconButton(
                      onPressed: () {
                        editList(index);
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            onLongPress: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Do you want to Delete this note"),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).pop();
                            todeleteList(index);
                          });
                        },
                        child: Text("Yes"))
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            addToDoList();
            setState(() {});
          },
          child: Icon(Icons.add)),
    );
  }
}
