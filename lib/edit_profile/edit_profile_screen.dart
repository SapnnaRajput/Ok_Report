import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/constants/colors.dart';

class EditProfileScreen extends StatelessWidget{

  void showSelectPhotoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: ()=> Get.snackbar("Success", "Choose From Gallery"),
                  child: const Row(
                    children: [
                      Icon(Icons.image),
                      Text(
                        'Choose from library',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: ORColors.textPrimary),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const Divider(thickness: 0.5),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: ()=> Get.snackbar("Success", "Camera is Opening"),
                  child: const Row(
                    children: [
                      Icon(Icons.camera_alt_sharp),
                      Text(
                        'Take Photo',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: ORColors.textPrimary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: ORColors.primaryColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 80,
                  width: 80,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/icons/user.png'),
                  ),
                ),
                Positioned(
                  bottom: 0,
                    right: 0,
                    child: GestureDetector(
                        onTap: ()=> showSelectPhotoDialog(context),
                        child: const Icon(Icons.camera_alt_outlined)
                    ),
                ),
              ],
            ),

            const SizedBox(height: 25),
            const BuildEditTile(title: "Name", subtitle: "Micheal Jones"),
            const Divider(thickness: 0.5),
            const BuildEditTile(title: "Gender", subtitle: "Not Set"),
            const Divider(thickness: 0.5),
            const BuildEditTile(title: "Weight", subtitle: "68KG"),
            const Divider(thickness: 0.5),
            const BuildEditTile(title: "Height", subtitle: "5.9"),
            const Divider(thickness: 0.5),
            const BuildEditTile(title: "Phone Number", subtitle: "+1 454785156"),
            const Divider(thickness: 0.5),
            const BuildEditTile(title: "Email Account", subtitle: "michealjones@gmail.com"),
            const Divider(thickness: 0.5),
            const BuildEditTile(title: "Change Password", subtitle: "*****************"),
            const Divider(thickness: 0.5),
            const BuildEditTile(title: "Subscription", subtitle: "Premium Plan"),
            const Divider(thickness: 0.5),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: ORColors.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                padding:
                const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: const Text(
                "Logout",
                style: TextStyle(
                  color: ORColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }

}

class BuildEditTile extends StatelessWidget {
  const BuildEditTile({
    super.key, required this.title, required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ORColors.textPrimary),
          ),
          Row(
            children: [
              Text(
                subtitle,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ORColors.darkerGrey),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.arrow_forward_ios, size: 16)
            ],
          )
        ],
      ),
    );
  }
}