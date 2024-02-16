import 'package:brecho_utilities/brecho_utilities.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';


class BrechoShimmer extends StatelessWidget {
  final Widget child;
  final Color color;
  final double highlightOpacity;

  const BrechoShimmer({
    super.key,
    required this.child,
    this.color = BrechoColors.neutral8,
    this.highlightOpacity = 0.3,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Shimmer.fromColors(
            period: const Duration(milliseconds: 1000),
            baseColor: color,
            highlightColor: color.withOpacity(highlightOpacity),
            child: child));
  }
}

class BrechoShimmerContainer extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double width;
  final double height;
  final double radius;
  final BoxShape shape;

  const BrechoShimmerContainer({
    super.key,
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    required this.width,
    required this.height,
    this.radius = 0,
    this.shape = BoxShape.rectangle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            radius == 0 ? null : BorderRadius.all(Radius.circular(radius)),
        shape: shape,
      ),
    );
  }
}
