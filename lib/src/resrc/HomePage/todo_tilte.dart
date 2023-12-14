import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Todo_tilte extends StatelessWidget {
  final String taskName;
  final bool checkTask ;
  Function(bool?) onChange; //tại biến onChange với kiểu hàm, đối số là bool và ? là có thể null
  Function(BuildContext)? deleteFunction;


  Todo_tilte({   //this is constructor in dart
    Key? key,
  required this.taskName,
  required this.checkTask,
  required this.onChange,
    required this.deleteFunction,
  }): super(key : key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children:  [
            SlidableAction(onPressed: deleteFunction,
            icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(20),
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.tealAccent[100],
            borderRadius: BorderRadius.circular(14)
          ),
          child: Row(
          children: [
            Checkbox(
                value: checkTask,
                onChanged: onChange,
              activeColor: Colors.black,
            ),
            Text(taskName,
            style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.w500,
                decoration: checkTask ? TextDecoration.lineThrough : TextDecoration.none),
            ),
          ],
          ),
        ),
      ),
    );
  }
}
