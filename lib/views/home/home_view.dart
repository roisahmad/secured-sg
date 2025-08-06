import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:secure_sg_app/utils/constants.dart';
// import 'package:secure_sg_app/views/widgets/appbar_widget.dart';
// import 'package:secure_sg_app/views/widgets/background_widget.dart';
import 'package:secure_sg_app/views/widgets/card_menu_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // final GlobalKey _menuKey = GlobalKey();
  // OverlayEntry? _overlayEntry;
  final CarouselSliderControllerImpl _carouselController =
      CarouselSliderControllerImpl();
  int _current = 0;

  final List<Map<String, String>> dummyBlogs = [
    {'title': '1', 'image': 'assets/images/slider-new.jpg'},
    {'title': '2', 'image': 'assets/images/slider2-new.jpg'},
    {'title': '3', 'image': 'assets/images/slider3-new.jpg'},
  ];

  // void _togglePopover() {
  //   if (_overlayEntry != null) {
  //     _removePopover();
  //   } else {
  //     _showPopover();
  //   }
  // }

  // void _removePopover() {
  //   _overlayEntry?.remove();
  //   _overlayEntry = null;
  // }

  // void _showPopover() {
  //   final RenderBox renderBox =
  //       _menuKey.currentContext!.findRenderObject() as RenderBox;
  //   final Offset offset = renderBox.localToGlobal(Offset.zero);
  //   final Size size = renderBox.size;

  //   _overlayEntry = OverlayEntry(
  //     builder:
  //         (context) => GestureDetector(
  //           behavior: HitTestBehavior.translucent,
  //           onTap: _removePopover,
  //           child: Stack(
  //             children: [
  //               Positioned(
  //                 top: offset.dy + size.height + 8,
  //                 right: 16,
  //                 child: Material(
  //                   color: Colors.transparent,
  //                   child: Container(
  //                     width: 180,
  //                     padding: EdgeInsets.symmetric(vertical: 8),
  //                     decoration: BoxDecoration(
  //                       color: Constants.primaryColorTransparent,
  //                       borderRadius: BorderRadius.circular(8),
  //                       boxShadow: [
  //                         BoxShadow(
  //                           blurRadius: 10,
  //                           color: Colors.black26,
  //                           offset: Offset(0, 4),
  //                         ),
  //                       ],
  //                     ),
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       mainAxisSize: MainAxisSize.min,
  //                       children: [
  //                         _buildPopoverItem(
  //                           Icons.notifications,
  //                           "Notification",
  //                         ),
  //                         _buildPopoverItem(Icons.menu_book, "Regulation"),
  //                         _buildPopoverItem(Icons.logout, "Logout"),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //   );

  //   Overlay.of(context).insert(_overlayEntry!);
  // }

  // Widget _buildPopoverItem(IconData icon, String text) {
  //   return InkWell(
  //     onTap: () {
  //       _removePopover();
  //     },
  //     child: Padding(
  //       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  //       child: Row(
  //         children: [
  //           Icon(icon, size: 20, color: Colors.white),
  //           SizedBox(width: 10),
  //           Text(text, style: TextStyle(fontSize: 14, color: Colors.white)),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  @override
  void initState() {
    super.initState();
  }

  // @override
  // void dispose() {
  //   _removePopover();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppbarWidget(
      //   rightIcon: Icons.menu,
      //   rightIconKey: _menuKey,
      //   rightIconColor: Colors.white,
      //   onRightTap: () {
      //     _togglePopover();
      //   },
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                carouselController: _carouselController,
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 1,
                  enlargeCenterPage: false,
                  viewportFraction: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),

                items:
                    dummyBlogs.map((blog) {
                      return Builder(
                        builder: (context) {
                          double screenWidth =
                              MediaQuery.of(context).size.width;

                          return Container(
                            width: screenWidth,
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: <Widget>[
                                ClipRRect(
                                  child: Image.asset(
                                    blog['image']!,
                                    fit: BoxFit.cover,
                                    width: screenWidth,
                                    height: double.infinity,
                                  ),
                                ),

                                Positioned(
                                  bottom: 0.0,
                                  left: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0x22000000),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 6,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8.0,
                                      horizontal: 20.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              '${blog['title']!}/${dummyBlogs.length}',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text(
                                              'Westbay Condo',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              '27°C',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        // Text(
                                        //   'SG',
                                        //   style: TextStyle(
                                        //     color: Colors.red,
                                        //     fontSize: 32,
                                        //     fontWeight: FontWeight.bold,
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }).toList(),
              ),
              // const SizedBox(height: 8),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children:
              //       dummyBlogs.asMap().entries.map((entry) {
              //         return Container(
              //           width: 8.0,
              //           height: 8.0,
              //           margin: const EdgeInsets.symmetric(horizontal: 4.0),
              //           decoration: BoxDecoration(
              //             shape: BoxShape.circle,
              //             color:
              //                 _current == entry.key
              //                     ? Colors.black
              //                     : Color(0x33000000),
              //           ),
              //         );
              //       }).toList(),
              // ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 2,
                  children:
                      Constants.menuItems.map((item) {
                        return _buildMenuItem(
                          icon: item.icon!,
                          title1: item.title1,
                          title2: item.title2,
                          onTap: () {
                            // kosong atau navigasi ke halaman dummy
                          },
                        );
                      }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title1,
    String? title2,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: CardMenu2Widget(title1: title1, title2: title2, icon: icon),
    );
  }
}
