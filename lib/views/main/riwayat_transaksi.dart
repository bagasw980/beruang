// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:beruang/components/list_transaksi.dart';
import 'package:flutter/material.dart';

import 'package:beruang/components/card.dart';
import 'package:beruang/components/list_item.dart';
import 'package:beruang/utils/custom_icons_icons.dart';
import 'package:beruang/utils/theme/colors.dart';

class RiwayatTransaksi extends StatelessWidget {
  const RiwayatTransaksi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: PopupMenuButton<String>(
          offset: const Offset(0, 40),
          child: const SizedBox(
            width: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Saldo',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      'Rp25,000.00',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.expand_more_rounded,
                  color: Colors.black,
                  size: 16,
                )
              ],
            ),
          ),
          onSelected: (value) {
            if (value == 'item1') {
            } else if (value == 'item2') {}
          },
          itemBuilder: (BuildContext context) {
            return [
              const PopupMenuItem<String>(
                value: 'item1',
                child: Text('Item 1'),
              ),
              const PopupMenuItem<String>(
                value: 'item2',
                child: Text('Item 2'),
              ),
            ];
          },
        ),
        titleSpacing: 5,
        elevation: 1,
        backgroundColor: Colors.white,
        leading: SizedBox(
          width: 35,
          child: Image.asset('assets/images/saldo_icon.png'),
        ),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'item1') {
              } else if (value == 'item2') {}
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'item1',
                  child: Text('Item 1'),
                ),
                const PopupMenuItem<String>(
                  value: 'item2',
                  child: Text('Item 2'),
                ),
              ];
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'Ringkasan',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ),
                  CardView(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          ListItem(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            bottomDivider: true,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                  children: [
                                    Text(
                                      'Total Saldo : ',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      ' Rp25,000.00',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () => Navigator.pushNamed(
                                      context, '/kelola-dompet'),
                                  child: const Row(
                                    children: [
                                      Text(
                                        'Kelola Dompet',
                                        style: TextStyle(
                                            color: primaryColor, fontSize: 10),
                                      ),
                                      Icon(
                                        Icons.chevron_right_rounded,
                                        color: primaryColor,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const ListItem(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          CustomIcons.walletDown,
                                          color: greenColor,
                                          size: 26,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Pemasukan',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            Text(
                                              'Rp50,000.00',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    VerticalDivider(
                                      width: 5,
                                      thickness: 1.5,
                                      color: Colors.black12,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          CustomIcons.walletUp,
                                          color: redColor,
                                          size: 26,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Pengeluaran',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            Text(
                                              'Rp10,000.00',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                          const ListItem(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              topDivider: true,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Periode 21 Jan 2022 s/d 20 Feb 2022',
                                    style: TextStyle(
                                        fontSize: 8,
                                        fontStyle: FontStyle.italic),
                                  )
                                ],
                              ))
                        ],
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Text(
                      'Riwayat Transaksi',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ),
                  const ListRiwayatTransaksi(
                      listTransaksi: Column(
                        children: [
                          ListTransaksi(
                            title: 'Tagihan Listrik',
                            subTitle: 'Tunai - Pembelian token listrik',
                            nominal: '-Rp 100,000.00',
                            date: 'Hari ini',
                            icon: Image(
                              image: AssetImage('assets/images/electric.png'),
                              fit: BoxFit.fill,
                            ),
                            isDateShowed: true,
                          ),
                          ListTransaksi(
                            title: 'Tagihan Listrik',
                            subTitle: 'Tunai - Pembelian token listrik',
                            nominal: '-Rp 100,000.00',
                            date: 'Hari ini',
                            icon: Image(
                              image: AssetImage('assets/images/electric.png'),
                              fit: BoxFit.fill,
                            ),
                            isDateShowed: true,
                          ),
                        ],
                      ),
                      tanggal: '13',
                      hari: 'Kamis',
                      bulan: 'Januari',
                      tahun: '2022',
                      nominal: '-Rp 100,000.00'),
                  const SizedBox(
                    height: 10,
                  ),
                  const ListRiwayatTransaksi(
                    listTransaksi: Column(
                      children: [
                        ListTransaksi(
                          title: 'Listrik',
                          subTitle: 'BCA - Diberi token listrik',
                          nominal: '+Rp 100,000.00',
                          isPemasukan: true,
                          icon: Image(
                            image: AssetImage('assets/images/electric.png'),
                            fit: BoxFit.fill,
                          ),
                          isDateShowed: false,
                        ),
                      ],
                    ),
                    tanggal: '12',
                    hari: 'Rabu',
                    bulan: 'Januari',
                    tahun: '2022',
                    nominal: '+Rp 100,000.00',
                    isPemasukan: true,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListRiwayatTransaksi extends StatelessWidget {
  final String tanggal;
  final String hari;
  final String bulan;
  final String tahun;
  final String nominal;
  final Widget listTransaksi;
  final bool? isPemasukan;

  const ListRiwayatTransaksi({
    Key? key,
    required this.listTransaksi,
    required this.tanggal,
    required this.hari,
    required this.bulan,
    required this.tahun,
    required this.nominal,
    this.isPemasukan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardView(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          ListItem(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      tanggal,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: primaryColor),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hari,
                          style: const TextStyle(fontSize: 12),
                        ),
                        Text(
                          '$bulan $tahun',
                          style: const TextStyle(
                              fontSize: 10, color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  nominal,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: isPemasukan == true ? greenColor : redColor),
                ),
              ],
            ),
          ),
          listTransaksi
        ],
      ),
    );
  }
}
