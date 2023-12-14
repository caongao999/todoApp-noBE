import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Date extends StatefulWidget {
  @override
  _Date createState() => _Date();
}

class _Date extends State<Date> {
  late String currentTime;

  @override
  void initState() {
    super.initState();
    // Gọi hàm để cập nhật thời gian mỗi giây
    updateTime();
  }

  void updateTime() {
    // Lấy thời gian hiện tại và định dạng
    DateTime now = DateTime.now();
    currentTime = DateFormat('EEEE : HH:mm:ss').format(now);

    // Cập nhật giao diện mỗi giây
    Future.delayed(Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          updateTime();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(),
            color: Colors.yellow[200],
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Text(
            currentTime,
            style: TextStyle(fontSize: 20.0),
          ),
    );
  }
}
