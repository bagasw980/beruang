import 'package:beruang/components/list_transaksi.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:beruang/components/card.dart';
import 'package:beruang/components/list_item.dart';
import 'package:beruang/utils/custom_icons_icons.dart';
import 'package:beruang/utils/theme/colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hai, Kurnia! 🖐️',
          style: TextStyle(fontSize: 14),
        ),
        titleSpacing: 5,
        elevation: 1,
        backgroundColor: Colors.white,
        leading: SizedBox(
          width: 35,
          child: Image.asset('assets/images/profil_image.png'),
        ),
        actions: <Widget>[
          PopupMenuButton<String>(
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          const Icon(
                            Icons.notifications_active_outlined,
                            color: selectedColor,
                          ),
                          Positioned(
                            right: 4,
                            top: 4,
                            child: Container(
                              width: 7,
                              height: 7,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            onSelected: (value) {
              // Handle menu item selection here
              if (value == 'item1') {
                // Perform action for item1
              } else if (value == 'item2') {
                // Perform action for item2
              }
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
          margin: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              const CarouselView(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CardView(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            ListItem(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              bottomDivider: true,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        'Total Saldo : ',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        'Rp25,000.00',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      )
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
                                              color: primaryColor,
                                              fontSize: 10),
                                        ),
                                        Icon(
                                          Icons.chevron_right_rounded,
                                          color: primaryColor,
                                          size: 16,
                                        )
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
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )
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
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          )
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
                    CardView(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          const ListItem(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Transaksi Terakhir',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    'Periode 21 Jan 2022 s/d 20 Feb 2022',
                                    style: TextStyle(
                                        fontSize: 8,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ],
                              )),
                          const ListTransaksi(
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
                          const ListTransaksi(
                            title: 'Tagihan Listrik',
                            subTitle: 'Tunai - Pembelian token listrik',
                            nominal: '-Rp 100,000.00',
                            date: 'Kemarin',
                            icon: Image(
                              image: AssetImage('assets/images/electric.png'),
                              fit: BoxFit.fill,
                            ),
                            isDateShowed: true,
                          ),
                          const ListTransaksi(
                            isPemasukan: true,
                            title: 'Freelance',
                            subTitle: 'BCA - Bayaran untukproject freelance',
                            nominal: '+Rp 100,000.00',
                            date: 'Lusa',
                            icon: Image(
                              image: AssetImage('assets/images/electric.png'),
                              fit: BoxFit.fill,
                            ),
                            isDateShowed: true,
                          ),
                          ListItem(
                            topDivider: true,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Center(
                              child: GestureDetector(
                                child: const Text(
                                  'Lihat Semua Transaksi',
                                  style: TextStyle(
                                      fontSize: 10, color: primaryColor),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CarouselView extends StatefulWidget {
  const CarouselView({super.key});

  @override
  State<StatefulWidget> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: const [
            SizedBox(
              child: Stack(
                children: [
                  Image(
                    image: AssetImage('assets/images/wallet_1.png'),
                  ),
                  Positioned(
                    width: 140,
                    right: 15,
                    top: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Total saldo',
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                        Text(
                          'Rp 20,000.00',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Update Terakhir',
                              style:
                                  TextStyle(fontSize: 8, color: Colors.white),
                            ),
                            Text(
                              ' 20 Jan 2022, 14:00',
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              child: Stack(
                children: [
                  Image(
                    image: AssetImage('assets/images/wallet_2.png'),
                  ),
                  Positioned(
                    width: 140,
                    right: 15,
                    top: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Total saldo',
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                        Text(
                          'Rp 20,000.00',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Update Terakhir',
                              style:
                                  TextStyle(fontSize: 8, color: Colors.white),
                            ),
                            Text(
                              ' 20 Jan 2022, 14:00',
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              child: Stack(
                children: [
                  Image(
                    image: AssetImage('assets/images/wallet_3.png'),
                  ),
                  Positioned(
                    width: 140,
                    right: 15,
                    top: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Total saldo',
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                        Text(
                          'Rp 20,000.00',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Update Terakhir',
                              style:
                                  TextStyle(fontSize: 8, color: Colors.white),
                            ),
                            Text(
                              ' 20 Jan 2022, 14:00',
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
          options: CarouselOptions(
            enableInfiniteScroll: false,
            height: 160,
            initialPage: 0,
            enlargeStrategy: CenterPageEnlargeStrategy.scale,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            enlargeFactor: 0.2,
            onPageChanged: (index, reason) {
              setState(() {
                pageIndex = index;
              });
            },
          ),
        ),
        SizedBox(
          height: 20,
          child: CarouselIndicator(
            color: secondaryColor,
            activeColor: primaryColor,
            count: 3,
            index: pageIndex,
            width: 20,
            height: 5,
            space: 10,
          ),
        ),
      ],
    );
  }
}
