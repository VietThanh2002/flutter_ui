import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top:40, left: 20, right: 20),
            decoration:  BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0
                ),
              ]
            ),
            child: TextField(
                  decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'Nhận thông tin tìm kiếm',
                  hintStyle: TextStyle(
                    color: Colors.green[100],
                    fontSize: 14,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  suffixIcon: const Icon(
                    Icons.filter_list_alt,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
              ),
            ),
          ),
         ],  
        ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: Text('My Store'),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 244, 242, 242),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.arrow_back_ios_new,
          size: 20,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            // Xử lý khi người dùng nhấn vào biểu tượng more_vert_sharp
            print('More options pressed');
          },
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 244, 242, 242),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.more_vert_sharp,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}