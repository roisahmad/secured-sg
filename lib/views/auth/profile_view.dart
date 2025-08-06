import 'package:flutter/material.dart';
import 'package:secure_sg_app/utils/constants.dart';
import 'package:secure_sg_app/views/widgets/wave_clipper_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Profile', style: TextStyle(color: Colors.white)),
      //   backgroundColor: Constants.primaryColor,
      //   iconTheme: const IconThemeData(color: Colors.white),
      // ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: LiquidTopClipperLayer1(),
              child: Container(height: 200, color: Constants.secondaryColor),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: LiquidTopClipperLayer2(),
              child: Container(height: 120, color: Constants.primaryColor),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  Center(
                    child: Column(
                      children: [
                        const Icon(
                          Icons.account_circle_outlined,
                          size: 100,
                          color: Constants.primaryColor,
                        ),
                        Text(
                          'User',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        // ElevatedButton(
                        //   style: ElevatedButton.styleFrom(
                        //     backgroundColor: Constants.primaryColor,
                        //     shape: const StadiumBorder(),
                        //     padding: const EdgeInsets.symmetric(
                        //       horizontal: 24,
                        //       vertical: 12,
                        //     ),
                        //   ),
                        //   onPressed: () async {
                        //     final result = await Navigator.push(
                        //       context,
                        //       MaterialPageRoute(builder: (_) => EditProfileScreen()),
                        //     );

                        //     if (result == true) {
                        //       await _loadUser();
                        //     }
                        //   },
                        //   child: const Text(
                        //     'Ubah Profile',
                        //     style: TextStyle(color: Colors.white),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  _buildMenuItem(
                    title: 'Log out',
                    icon: Icons.logout,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color:
                      title == 'Log out'
                          ? const Color.fromARGB(67, 244, 67, 54)
                          : Color(0xFFE6ECF8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  size: 24,
                  color: title == 'Log out' ? Colors.red : Colors.grey,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Icon(Icons.chevron_right, color: Color(0xFF9BA1A6)),
            ],
          ),
        ),
      ),
    );
  }
}
