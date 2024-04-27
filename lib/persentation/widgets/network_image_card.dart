import 'package:flutter/material.dart';

class NetworkImageCard extends StatelessWidget {
  final String? imageUrl;
  final double width;
  final double heigth;
  final double borderRadius;
  final BoxFit? fit;
  final VoidCallback? onTap;
  const NetworkImageCard(
      {super.key,
      this.imageUrl,
      this.width = 150,
      this.heigth = 228,
      this.borderRadius = 10,
      this.fit,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: heigth,
        decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Stack(
          children: [
            if (imageUrl == null)
              const Center(
                child: CircularProgressIndicator(),
              ),
            if (imageUrl != null)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  image:
                      DecorationImage(image: NetworkImage(imageUrl!), fit: fit),
                ),
              )
          ],
        ),
      ),
    );
  }
}
