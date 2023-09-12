import 'package:beruang/utils/custom_icons_icons.dart';
import 'package:beruang/utils/theme/colors.dart';
import 'package:beruang/views/main/dashboard.dart';
import 'package:beruang/views/main/riwayat_transaksi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _CustomNavigation();
}

class _CustomNavigation extends State<Navigation> {
  int _selectedIndex = 0;
  var isDialOpen = ValueNotifier<bool>(false);
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget getCurrentScreen() {
    if (_selectedIndex == 0) {
      return const DashboardScreen();
    } else if (_selectedIndex == 1) {
      return const RiwayatTransaksi();
    }
    return const Text('nothing here');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: getCurrentScreen(),
          ),
          bottomNavigationBar: Stack(
            children: [
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomBottomNavigationBarItem(
                      icon: const Icon(CustomIcons.home),
                      label: 'Dashboard',
                      selected: _selectedIndex == 0,
                      onTap: () => _onItemTapped(0),
                    ),
                    CustomBottomNavigationBarItem(
                      icon: const Icon(CustomIcons.receipt),
                      label: 'Transaksi',
                      selected: _selectedIndex == 1,
                      onTap: () => _onItemTapped(1),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    CustomBottomNavigationBarItem(
                      icon: const Icon(CustomIcons.presentationReport),
                      label: 'Laporan',
                      selected: _selectedIndex == 2,
                      onTap: () => _onItemTapped(2),
                    ),
                    CustomBottomNavigationBarItem(
                      icon: const Icon(CustomIcons.account),
                      label: 'Akun',
                      selected: _selectedIndex == 3,
                      onTap: () => _onItemTapped(3),
                    ),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: SpeedDial(
            icon: Icons.add,
            activeIcon: Icons.close,
            spacing: 10,
            mini: false,
            spaceBetweenChildren: 1,
            childPadding: const EdgeInsets.all(5),
            iconTheme: const IconThemeData(size: 30),
            switchLabelPosition: true,
            overlayColor: Colors.black,
            overlayOpacity: 0.5,
            foregroundColor: Colors.white,
            backgroundColor: primaryColor,
            animationCurve: Curves.elasticInOut,
            isOpenOnStart: false,
            children: [
              SpeedDialChild(
                labelWidget: Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: 150,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 5,
                          child: Container(
                            width: 120,
                            height: 20,
                            padding: const EdgeInsets.only(left: 35),
                            decoration: BoxDecoration(
                              color: const Color(0xFFBDECD1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Input Pemasukan',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    color: greenColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: const Color(0xFFBDECD1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.add_circle_outline_rounded,
                            color: greenColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                backgroundColor: Colors.transparent,
                onTap: () => Navigator.pushNamed(context, '/input-pemasukan'),
              ),
              SpeedDialChild(
                labelWidget: Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: 150,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 5,
                          child: Container(
                            width: 120,
                            height: 20,
                            padding: const EdgeInsets.only(left: 35),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFBB8C0),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Input Pengeluaran',
                                  style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    color: redColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFBB8C0),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.do_disturb_on_outlined,
                            color: redColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                backgroundColor: Colors.transparent,
                onTap: () => Navigator.pushNamed(context, '/input-pengeluaran'),
              ),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ],
    );
  }
}

class CustomBottomNavigationBarItem extends StatelessWidget {
  final Icon icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const CustomBottomNavigationBarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        padding: const EdgeInsets.symmetric(vertical: 12),
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon.icon,
              color: selected ? selectedColor : unselectedColor,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: selected ? selectedColor : unselectedColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
