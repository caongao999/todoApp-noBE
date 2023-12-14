import 'package:flutter/material.dart';
import 'package:todolisst/src/resrc/HomePage/Todolist.dart';
class in4 extends StatelessWidget {
  const in4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.tealAccent[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://www.photosmile.vn/images/202312/12/photosmile.vn__final_86521515199229064_.jpg?act=78'),
                ),
                borderRadius: BorderRadius.circular(50),
                color:Colors.blueGrey,
              ),
              ),
             Positioned(
               //top: 20,
                 //bottom: 20,
                 child:  Container(
                   height: 100,
                   width: 100,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: NetworkImage('https://www.photosmile.vn/images/202312/12/photosmile.vn__final_86521515199229064_.jpg?act=78'),
                     ),
                     borderRadius: BorderRadius.circular(50),
                     color:Colors.blueGrey,
                   ),
                 ),
             ),
      ]
          ),
          Text("Nguyễn Minh Duyy - 23IT3",
          style: TextStyle(
            fontSize: 28,
            color: Colors.black,
            decoration: TextDecoration.none
          ),),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Text("Sunshine in your heart, Sunshine in your life",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  decoration: TextDecoration.none
              ),),
          ),
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              color: Colors.yellow[200],
            ),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text("Thông tin cá nhân",

                  style:TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      decoration: TextDecoration.none
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Họ tên: Nguyễn Minh Duy",
                    style:TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                        decoration: TextDecoration.none
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Quê quán: Quảng Trị",
                    style:TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                        decoration: TextDecoration.none
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Học vấn: Trường CNTT & TT Việt Hàn",
                    style:TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      decoration: TextDecoration.none
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Việc làm: Supporter in CoMely ",
                    style:TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
    decoration: TextDecoration.none
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Liên hệ: minhduyy4167@gmail.com",
                    style:TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
    decoration: TextDecoration.none
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Text("Thông tin về TODOLIST",
                    style:TextStyle(
                      fontSize: 26,
                      color: Colors.black,
    decoration: TextDecoration.none
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Tên: TODOLIST - Minh Duyy",
                    style:TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                        decoration: TextDecoration.none
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Phiên bản: 1.0",
                    style:TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                        decoration: TextDecoration.none
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Hỗ trợ: Trên mọi nền tảng.",
                    style:TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                        decoration: TextDecoration.none
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Báo lỗi: cocoloto997@gmail.com",
                    style:TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                        decoration: TextDecoration.none
                    ),
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrangeAccent, // Background color
                  onPrimary: Colors.white, // Text color
                  padding: EdgeInsets.all(16), // Button padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Button border radius
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Trở về trang chủ") ),
          )

        ],
      ),
    );
  }
}
