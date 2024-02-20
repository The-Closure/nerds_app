// import 'package:cached_network_image/cached_network_image.dart';
import 'package:dashbord_cafe/features/place_of_study/domain/entities/place_entity.dart';
import 'package:flutter/material.dart';

class PlaceWidject extends StatelessWidget {
  final PlaceEntity? place;
  final bool? isRemovable;
  final void Function(PlaceEntity place)? onRemove;
  final void Function(PlaceEntity place)? onplacePressed;

  const PlaceWidject({
    Key? key,
    this.place,
    this.onplacePressed,
    this.isRemovable = false,
    this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _onTap,
      child: Container(
        padding: const EdgeInsetsDirectional.only(
            start: 14, end: 14, bottom: 7, top: 7),
        height: MediaQuery.of(context).size.width / 2.2,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.08),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/cafe1.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            _buildTitleAndDescription(),
            _buildRemovableArea(),
          ],
        ),
      ),
    );
  }

  // Widget _buildImage(BuildContext context) {
  //   return CachedNetworkImage(
  //     imageUrl: place!.urlToImage!,
  //     imageBuilder : (context, imageProvider) => Padding(
  //       padding: const EdgeInsetsDirectional.only(end: 14),
  //         child: ClipRRect(
  //           borderRadius: BorderRadius.circular(20.0),
  //           child: Container(
  //             width: MediaQuery.of(context).size.width / 3,
  //             height: double.maxFinite,
  //             decoration: BoxDecoration(
  //               color: Colors.black.withOpacity(0.08),
  //               image: DecorationImage(
  //                 image: imageProvider,
  //                 fit: BoxFit.cover
  //               )
  //             ),
  //           ),
  //         ),
  //     ),
  //     progressIndicatorBuilder : (context, url, downloadProgress) => Padding(
  //       padding: const EdgeInsetsDirectional.only(end: 14),
  //         child: ClipRRect(
  //           borderRadius: BorderRadius.circular(20.0),
  //           child: Container(
  //             width: MediaQuery.of(context).size.width / 3,
  //             height: double.maxFinite,
  //             child: CupertinoActivityIndicator(),
  //             decoration: BoxDecoration(
  //               color: Colors.black.withOpacity(0.08),
  //             ),
  //           ),
  //         ),
  //     ),
  //     errorWidget : (context, url, error) =>
  //     Padding(
  //       padding: const EdgeInsetsDirectional.only(end: 14),
  //         child: ClipRRect(
  //           borderRadius: BorderRadius.circular(20.0),
  //           child: Container(
  //             width: MediaQuery.of(context).size.width / 3,
  //             height: double.maxFinite,
  //             child: Icon(Icons.error),
  //             decoration: BoxDecoration(
  //               color: Colors.black.withOpacity(0.08),
  //             ),
  //           ),
  //         ),
  //     )
  //   );
  // }

  Widget _buildTitleAndDescription() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              place!.name ?? '',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: 'Butler',
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: Colors.black87,
              ),
            ),

            // Description
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  place!.locations![0] ?? '',
                  maxLines: 2,
                ),
              ),
            ),

            // Datetime
            const Row(
              children: [
                Icon(Icons.timeline_outlined, size: 16),
                SizedBox(width: 4),
                // Text(
                //   ,
                //   style: const TextStyle(
                //     fontSize: 12,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRemovableArea() {
    if (isRemovable!) {
      return GestureDetector(
        onTap: _onRemove,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Icon(Icons.remove_circle_outline, color: Colors.red),
        ),
      );
    }
    return Container();
  }

  void _onTap() {
    if (onplacePressed != null) {
      onplacePressed!(place!);
    }
  }

  void _onRemove() {
    if (onRemove != null) {
      onRemove!(place!);
    }
  }
}
