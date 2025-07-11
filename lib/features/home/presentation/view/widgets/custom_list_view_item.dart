import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imgLink});

  final String imgLink;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imgLink,
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
