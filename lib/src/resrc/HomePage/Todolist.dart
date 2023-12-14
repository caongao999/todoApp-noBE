import 'package:flutter/material.dart';
import 'package:todolisst/src/resrc/HomePage/dialog.dart';
import 'package:todolisst/src/resrc/HomePage/todo_tilte.dart';
import 'package:todolisst/src/resrc/HomePage/in4.dart';

import 'date.dart';
class Todolist extends StatefulWidget {
  Todolist({super.key});


  @override
  State<Todolist> createState() => _TodolistState();
}

final _nTcontroller = TextEditingController();
 List toDoTask = [
  ["Học Flutter", false],
  ["Học Giải tích", false],
  ["Đi xả stress", true],
];

class _TodolistState extends State<Todolist> {
  @override
  Widget build(BuildContext context)  {

    //save 1 task
    void saveNewTask() {
      setState(() {
        toDoTask.add([_nTcontroller.text, false]);
      });
      Navigator.of(context).pop();
    }
    //tạo task mới
    void createNewTask() {
      showDialog(
          context: context,
          builder: (context) {
            return DialogShow(
              nTaskController: _nTcontroller,
              onSave: saveNewTask,
              onCancel: () => Navigator.of(context).pop(),
            );
          },
            );
          };
    //ấn vô để hoàn thành task
    void checkBoxChange(bool? value, int index) {
      setState(() {
        toDoTask[index][1] = value ?? false; //đây là hàm tráo đổi trạng thái của checkbox khi ấn vào
      });
    };

    //xóa task
    void deleteTask(int index) {
      setState(() {
        toDoTask.removeAt(index);
      });
    };
    //mở in4 về Minh Duyy
    void in4() {

    }
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
        title: const Text("TO DO LIST - Minh Duyy",
        style: TextStyle(
          color: Colors.amberAccent,
          fontWeight: FontWeight.w700,
        ),),
        actions: [
          IconButton(
              onPressed: () {
               setState(() {
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => GoHome(context)),
                 );
               });

              },
              icon: Icon(Icons.account_circle_outlined, color: Colors.white, size: 24.0,))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        onPressed: () {
          createNewTask();
        },
        child: const Icon(Icons.add, ),
      ),
      body:
          Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 97.5, top: 17),
                child: Container(
                  child: Date(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                child: Text("Việc cần làm hôm nay: ",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.deepOrangeAccent,
                  fontWeight: FontWeight.w700,
                ),),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                      itemCount: toDoTask.length,
                      itemBuilder: (context, index) {
                        return Todo_tilte(
                            taskName: toDoTask[index][0],
                            checkTask: toDoTask[index][1],
                            onChange: (bool? value) =>
                              checkBoxChange(value, index),
                          deleteFunction: (context) => deleteTask(index),
                        );
                      },
                    ),
              ),
            ],
          ),
    );
  }
  Widget GoHome(BuildContext context) {
    return in4();
  }
}

