import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:secure_sg_app/utils/constants.dart';
import 'package:secure_sg_app/views/widgets/appbar_widget.dart';
import 'package:secure_sg_app/views/widgets/background_widget.dart';
import 'package:secure_sg_app/views/widgets/card_menu_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final CarouselSliderControllerImpl _carouselController =
      CarouselSliderControllerImpl();
  int _current = 0;

  final List<Map<String, String>> dummyBlogs = [
    {'title': '1', 'image': 'assets/images/slider-new.jpg'},
    {'title': '2', 'image': 'assets/images/slider2-new.jpg'},
    {'title': '3', 'image': 'assets/images/slider3-new.jpg'},
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: BackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 32),
                  CarouselSlider(
                    carouselController: _carouselController,
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.5,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                    ),

                    items:
                        dummyBlogs.map((blog) {
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset(
                                    blog['image']!,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                        dummyBlogs.asMap().entries.map((entry) {
                          return Container(
                            width: 8.0,
                            height: 8.0,
                            margin: const EdgeInsets.symmetric(horizontal: 4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  _current == entry.key
                                      ? Colors.black
                                      : Color(0x33000000),
                            ),
                          );
                        }).toList(),
                  ),
                  const SizedBox(height: 32),
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 1.5,
                    children:
                        Constants.menuItems.map((item) {
                          return _buildMenuItem(
                            icon: item.imagePath,
                            title1: item.title1,
                            title2: item.title2,
                            onTap: () {
                              // kosong atau navigasi ke halaman dummy
                            },
                          );
                        }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required String icon,
    required String title1,
    String? title2,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: CardMenuWidget(title1: title1, title2: title2, icon: icon),
    );
  }
}
