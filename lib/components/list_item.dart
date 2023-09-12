// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final bool? topDivider;
  final bool? bottomDivider;

  const ListItem({
    Key? key,
    required this.child,
    this.padding,
    this.topDivider,
    this.bottomDivider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        topDivider == true
            ? const Divider(
                thickness: 1,
                height: 1,
                color: Colors.black12,
                indent: 0,
                endIndent: 0,
              )
            : const Divider(
                color: Colors.transparent,
                height: 0,
              ),
        Container(
          padding: padding,
          child: child,
        ),
        bottomDivider == true
            ? const Divider(
                thickness: 1,
                height: 1,
                color: Colors.black12,
                indent: 0,
                endIndent: 0,
              )
            : const Divider(
                color: Colors.transparent,
                height: 0,
              ),
      ],
    );
  }
}
