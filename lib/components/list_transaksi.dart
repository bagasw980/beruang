import 'package:beruang/components/list_item.dart';
import 'package:beruang/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class ListTransaksi extends StatelessWidget {
  final bool? isPemasukan;
  final bool isDateShowed;
  final String title;
  final String subTitle;
  final String nominal;
  final String? date;
  final Image icon;

  const ListTransaksi({
    Key? key,
    this.isPemasukan,
    required this.isDateShowed,
    required this.title,
    required this.subTitle,
    required this.nominal,
    required this.icon,
    this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListItem(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        topDivider: true,
        child: Row(
          children: [
            SizedBox(
              width: 28,
              child: icon,
            ),
            const SizedBox(
              width: 12,
            ),
            isDateShowed == true
                ? Column(
                    children: [
                      SizedBox(
                          width: 280,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                title,
                                style: const TextStyle(fontSize: 12),
                              ),
                              Text(
                                nominal,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: isPemasukan == true
                                        ? greenColor
                                        : redColor),
                              )
                            ],
                          )),
                      SizedBox(
                          width: 280,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(subTitle,
                                  style: const TextStyle(
                                      fontSize: 10, color: Colors.black45)),
                              Text(
                                date!,
                                style: const TextStyle(
                                    fontSize: 10, color: Colors.black45),
                              )
                            ],
                          )),
                    ],
                  )
                : SizedBox(
                    width: 280,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title, style: const TextStyle(fontSize: 12)),
                            Text(subTitle,
                                style: const TextStyle(
                                    fontSize: 10, color: Colors.black54))
                          ],
                        ),
                        Text(nominal,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: isPemasukan == true
                                    ? greenColor.withOpacity(0.4)
                                    : redColor.withOpacity(0.4)))
                      ],
                    ),
                  )
          ],
        ));
  }
}
