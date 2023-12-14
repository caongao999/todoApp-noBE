import 'package:flutter/material.dart';
import 'package:todolisst/src/resrc/HomePage/btn.dart';
class DialogShow extends StatelessWidget {
  final nTaskController;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogShow({super.key,
    required this.nTaskController,
required this.onSave,
    required this.onCancel
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.cyan[50],
      content: Container(
        height: 120,
        child: Column(
          children: [
          TextField(
            controller: nTaskController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Thêm kế hoạch "
            ),
          ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              myBtn(text: "Đồng ý!",
                  onPress: onSave,),
              const SizedBox(width: 10),
              myBtn(text: "Thoát",
                  onPress: onCancel),
            ],
          ),
        ),
],
        ),

      ),
    );
  }
}
