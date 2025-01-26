import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pepstore/common/widgets/appbar/appbar.dart';
import 'package:pepstore/common/widgets/images/cirular_image.dart';
import 'package:pepstore/common/widgets/texts/section_heading.dart';
import 'package:pepstore/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:pepstore/utils/constants/image_string.dart';
import 'package:pepstore/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const MyCircularImage(
                      image: MyImages.toyIcon,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture'))
                  ],
                ),
              ),

              const SizedBox(height: MySizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems),

              // Details
              const MySectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: MySizes.spaceBtwItems),

              MyProfileMenu(
                onPressed: () {},
                title: 'Name',
                value: 'Bambang Kaleran',
              ),
              MyProfileMenu(
                onPressed: () {},
                title: 'Username',
                value: 'bambang123',
              ),

              const SizedBox(height: MySizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems),

              // Personal Information
              const MySectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: MySizes.spaceBtwItems),

              MyProfileMenu(
                onPressed: () {},
                title: 'User ID',
                value: '231',
                icon: Iconsax.copy,
              ),
              MyProfileMenu(
                onPressed: () {},
                title: 'Email',
                value: 'bambang123@gmail.com',
              ),
              MyProfileMenu(
                onPressed: () {},
                title: 'Phone Number',
                value: '+62 858 123 456',
              ),
              MyProfileMenu(
                onPressed: () {},
                title: 'Gender',
                value: 'Male',
              ),
              MyProfileMenu(
                onPressed: () {},
                title: 'Date of birth',
                value: '15 Mar, 1985',
              ),

              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItems),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Delete Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
