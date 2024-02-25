import 'package:dashbord_cafe/core/resources/colors.dart';
import 'package:flutter/material.dart';

class Reserved extends StatelessWidget {
  const Reserved({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          int reservedCount = 1;

          return ListView.builder(
            itemCount: reservedCount,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient:
                            LinearGradient(colors: [lightBlue, darkBlue])),
                    child: ListTile(
                        title: Text('Table: 1'),
                        subtitle: Text('customer'),
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Text(
                            'room',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.delete,
                            color: Colors.grey.shade100,
                          ),
                        )),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
