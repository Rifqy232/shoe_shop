import 'package:final_project/constants.dart';
import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  int _selectedNav = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      color: whiteColor,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedNav = 0;
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  _selectedNav == 0 ? FractionallySizedBox(
                    widthFactor: 0.6,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            primaryColor.withOpacity(0.5),
                            whiteColor,
                          ],
                          stops: const [
                            0.01,
                            0.7,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        border: Border(
                          top: BorderSide(
                            width: 5,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ) : const SizedBox(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        color: _selectedNav == 0 ? primaryColor : inactiveColor,
                        const AssetImage(
                          'assets/icons/ic_home.png',
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Home",
                        style: regularTextStyle.copyWith(
                          color: _selectedNav == 0 ? primaryColor : inactiveColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedNav = 1;
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  _selectedNav == 1 ? FractionallySizedBox(
                    widthFactor: 0.6,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            primaryColor.withOpacity(0.5),
                            whiteColor,
                          ],
                          stops: const [
                            0.01,
                            0.7,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        border: Border(
                          top: BorderSide(
                            width: 5,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ) : const SizedBox(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        color: _selectedNav == 1 ? primaryColor : inactiveColor,
                        const AssetImage(
                          'assets/icons/ic_search.png',
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Search",
                        style: regularTextStyle.copyWith(
                          color: _selectedNav == 1 ? primaryColor : inactiveColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedNav = 2;
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  _selectedNav == 2 ? FractionallySizedBox(
                    widthFactor: 0.6,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            primaryColor.withOpacity(0.5),
                            whiteColor,
                          ],
                          stops: const [
                            0.01,
                            0.7,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        border: Border(
                          top: BorderSide(
                            width: 5,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ) : const SizedBox(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        color: _selectedNav == 2 ? primaryColor : inactiveColor,
                        const AssetImage(
                          'assets/icons/ic_transaction.png',
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Transaction",
                        style: regularTextStyle.copyWith(
                          color: _selectedNav == 2 ? primaryColor : inactiveColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedNav = 3;
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  _selectedNav == 3 ? FractionallySizedBox(
                    widthFactor: 0.6,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            primaryColor.withOpacity(0.5),
                            whiteColor,
                          ],
                          stops: const [
                            0.01,
                            0.7,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        border: Border(
                          top: BorderSide(
                            width: 5,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ) : const SizedBox(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        color: _selectedNav == 3 ? primaryColor : inactiveColor,
                        const AssetImage(
                          'assets/icons/ic_profile.png',
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Profile",
                        style: regularTextStyle.copyWith(
                          color: _selectedNav == 3 ? primaryColor : inactiveColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
