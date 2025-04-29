import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_apps/asset_helper/app_colors.dart';
import 'package:plant_apps/asset_helper/app_fonts.dart';
import 'package:plant_apps/asset_helper/app_images.dart';
import 'package:plant_apps/features/details_screen/details_screen.dart'; // Ensure AppImages is correct

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> avatarUrls = [
    'https://randomuser.me/api/portraits/men/1.jpg',
    'https://randomuser.me/api/portraits/men/2.jpg',
    'https://randomuser.me/api/portraits/men/3.jpg',
  ];
  final int extraUsersCount = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.homeImages),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(33),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          'Good morning,',
                          style: TextFontStyle.textStyle16w400Poppins,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Ahmed Ariyan',
                          style: TextFontStyle.headLine24w600Poppins,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      AppImages.profileImages,
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You are in a healthy environment',
                    style: TextFontStyle.textStyle14w500Poppins,
                  ),
                ),
                const SizedBox(height: 60),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'My Places',
                    style: TextFontStyle.textStyle16w500Poppins,
                  ),
                ),
                cardWidget(
                  avatarUrls: avatarUrls,
                  extraUsersCount: extraUsersCount,
                  title: 'Home',
                  status: 'Good',
                ),
                const SizedBox(height: 20),
                cardWidget(
                  avatarUrls: avatarUrls,
                  extraUsersCount: extraUsersCount,
                  title: 'Office',
                  status: 'Healthy',
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const DetailsScreen());
        },
        backgroundColor: AppColors.primaryColor,
        child: const Icon(Icons.add, color: AppColors.cFFFFFF),
      ),
    );
  }
}

class cardWidget extends StatelessWidget {
  const cardWidget({
    super.key,
    required this.avatarUrls,
    required this.extraUsersCount,
    required this.title,
    required this.status,
  });

  final List<String> avatarUrls;
  final int extraUsersCount;
  final String title, status;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white, // Base color
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.01),
            Colors.white.withOpacity(0.5),
          ], // Replace with your desired colors
          begin: Alignment.topLeft,
          end: Alignment.topCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: TextFontStyle.textStyle16w700Poppins),
                Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      status,
                      style: TextFontStyle.textStyle12w800Poppins.copyWith(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Row(
                  children: [
                    Text(
                      '652',
                      style: TextFontStyle.headLine34w800Poppins.copyWith(
                        fontSize: 44,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Container(
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                ),

                                Text(
                                  '13%',
                                  style: TextFontStyle.textStyle12w600Poppins
                                      .copyWith(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          'ppm',
                          style: TextFontStyle.textStyle16w400Poppins.copyWith(
                            color: AppColors.primaryColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AvatarStack(
                      avatarUrls: avatarUrls,
                      extraUsersCount: extraUsersCount,
                    ),
                    const SizedBox(height: 5),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'View Details',
                        style: TextFontStyle.textStyle12w400Poppins.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AvatarStack extends StatelessWidget {
  final List<String> avatarUrls;
  final int extraUsersCount;

  AvatarStack({required this.avatarUrls, required this.extraUsersCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Avatar stack
        SizedBox(
          width: 40, // Adjust based on number of avatars
          height: 40,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ...List.generate(
                avatarUrls.length > 3 ? 3 : avatarUrls.length, // Max 3 avatars
                (index) {
                  return Positioned(
                    left: index * 18, // Shift avatars for overlap
                    child: CircleAvatar(
                      radius: 20, // Avatar size
                      backgroundImage: NetworkImage(avatarUrls[index]),
                    ),
                  );
                },
              ),
              // Overlay for extra users count
              if (extraUsersCount > 0)
                Positioned(
                  left: 46, // Adjust position of the +X text
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white.withOpacity(0.8),
                    child: Text(
                      "+$extraUsersCount", // Display number of extra users
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
