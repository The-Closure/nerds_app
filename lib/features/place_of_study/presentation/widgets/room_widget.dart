// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_function_literals_in_foreach_calls, prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:dashbord_cafe/core/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/room_entity.dart';
import '../pages/user_pages/table_category_page.dart';

class RoomWidget extends StatelessWidget {
  final RoomEntity room;
  final int idPlace;
  const RoomWidget({
    Key? key,
    required this.room, required this.idPlace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TableCategoryPage(
                    idRoom: room.id!, idPlace: idPlace,
                  ),
                ),
              );
            },
            child: Container(
              width: 333,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xff7B9DE2),
                    Color(0xff3B3BC0),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                            child: Text(
                              room.status.toString(),
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Text(
                          'Looking for a safe studing Room?',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Max Num Of Chairs : ' +room.max_num_of_chairs.toString(),
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/cafe${room.id!}.jpg'))),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



// // import 'package:cached_network_image/cached_network_image.dart';

// import 'package:flutter/material.dart';

// import '../../domain/entities/room_entity.dart';

// class RoomWidget extends StatelessWidget {
//   final RoomEntity room;
//   final int index;
//   final bool? isRemovable;
//   final void Function(RoomEntity room)? onRemove;
//   final void Function(RoomEntity room)? onRoomPressed;

//   const RoomWidget({
//     Key? key,
//     this.onRoomPressed,
//     this.isRemovable = false,
//     this.onRemove, required this.room, required this.index
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       behavior: HitTestBehavior.opaque,
//       onTap: _onTap,
//       child: Container(
//         padding: const EdgeInsetsDirectional.only(
//             start: 14, end: 14, bottom: 7, top: 7),
//         height: MediaQuery.of(context).size.width / 2.2,
//         child: Row(
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(20.0),
//               child: Container(
//                 width: MediaQuery.of(context).size.width / 3,
//                 height: double.maxFinite,
//                 decoration: BoxDecoration(
//                     color: Colors.black.withOpacity(0.08),
//                     image:  DecorationImage(
//                         image: AssetImage('assets/images/cafe${index+1}.jpg'),
//                         fit: BoxFit.cover)),
//               ),
//             ),
//             _buildTitleAndDescription(),
//             _buildRemovableArea(),
//           ],
//         ),
//       ),
//     );
//   }
//   Widget _buildTitleAndDescription() {
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 7),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Title
//             Text(
//               room.toString(),
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//               style: const TextStyle(
//                 fontFamily: 'Butler',
//                 fontWeight: FontWeight.w900,
//                 fontSize: 18,
//                 color: Colors.black87,
//               ),
//             ),

//             // Description
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 4),
//                 child: Text(
//                   room.max_num_of_chairs!.toString(),
//                   maxLines: 2,
//                 ),
//               ),
//             ),

//             // Datetime
//             const Row(
//               children: [
//                 Icon(Icons.timeline_outlined, size: 16),
//                 SizedBox(width: 4),
//                 // Text(
//                 //   ,
//                 //   style: const TextStyle(
//                 //     fontSize: 12,
//                 //   ),
//                 // ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildRemovableArea() {
//     if (isRemovable!) {
//       return GestureDetector(
//         onTap: _onRemove,
//         child: const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 8),
//           child: Icon(Icons.remove_circle_outline, color: Colors.red),
//         ),
//       );
//     }
//     return Container();
//   }

//   void _onTap() {
//     if (onRoomPressed != null) {
//       onRoomPressed!(room);
//     }
//   }

//   void _onRemove() {
//     if (onRemove != null) {
//       onRemove!(room);
//     }
//   }
// }
