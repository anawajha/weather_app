import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/utils/constants/constants.dart';
import 'package:weather_app/utils/utils/utils.dart';

class AppImageNetwork extends StatelessWidget {
  const AppImageNetwork(
      {this.width,
      this.height,
      this.url,
      this.fit = BoxFit.cover,
      this.clip = Clip.none,
      this.shape = BoxShape.rectangle,
      this.radius = 12,
      super.key
      });
  final double? width;
  final double? height;
  final String? url;
  final BoxFit fit;
  final BoxShape shape;
  final Clip clip;
  final double radius;

  @override
  Widget build(BuildContext context) {
    Utils().screenUtil(context);
    return SizedBox(
      width: width,
      height: height,
      child: CachedNetworkImage(
        imageBuilder: (context, imageProvider) {
          return Container(
            width: width,
            height: height,
            clipBehavior: clip,
            decoration: BoxDecoration(
              borderRadius: clip == Clip.none && shape == BoxShape.rectangle ? BorderRadius.circular(radius) : null,
              shape: shape,
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                    url ?? Constants().urlUserPlacholder),
                fit: fit,
              ),
            ),
          );
        },
        imageUrl: url ?? Constants().urlUserPlacholder,
        errorWidget: (context, url, error) {
          return CachedNetworkImage(
              imageUrl: Constants().urlUserPlacholder,
              errorWidget: (context, url, error) {
                return SizedBox(
                  height: height,
                  width: width,
                  child: const Text("Error"),
                );
              },
              fit: BoxFit.cover);
        },
        width: width,
        height: height,
        fit: BoxFit.cover,
        placeholder: (context, String? url) {
          return Container(
                clipBehavior: clip,
                decoration: BoxDecoration(
                  borderRadius: clip == Clip.none && shape == BoxShape.rectangle ? BorderRadius.circular(radius) : null,
                  shape: shape,
                ),
              );
        },
        maxWidthDiskCache: width?.toInt(),
        maxHeightDiskCache: height?.toInt(),
      ),
    );
  }
}
