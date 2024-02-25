import 'package:dashbord_cafe/core/resources/asset/asset.dart';
import 'package:dashbord_cafe/core/resources/colors.dart';
import 'package:flutter/material.dart';

class RoomCategory extends StatelessWidget {
  const RoomCategory({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 246, 255, 1),
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {},
          child: Text(
            'Add',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        title: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Icon(
              Icons.article_outlined,
              color: Colors.white,
              size: 50,
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: darkBlue,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              SizedBox(
                width: width * 0.8,
                child: InkWell(
                  onTap: () {},
                  child: Card(
                    color: index == 0
                        ? Colors.red
                        : index == 1
                            ? Colors.green
                            : Colors.amber,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(login),
                        ),
                        Text('Category')
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
