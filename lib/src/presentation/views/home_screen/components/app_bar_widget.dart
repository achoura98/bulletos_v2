import 'package:bulletos_v2/config/constants/constant_sizes.dart';
import 'package:bulletos_v2/config/constants/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BAppBar(
      {super.key,
      this.title,
      this.showBackArrow = false,
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: BSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Iconsax.arrow_left))
            : leadingIcon != null
                ? IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(Iconsax.arrow_left))
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(BDeviceUtility.getScreenHeight());
}
// class AppBarWidget extends StatelessWidget {
//   const AppBarWidget({
//     super.key,
//     required this.dark,
//   });

//   final bool dark;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(top: 10.h),
//       child: SizedBox(
//         height: 70.w,
//         width: double.infinity,
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Row(
//             children: [
//               const CircleAvatar(
//                 maxRadius: 30,
//                 backgroundColor: BColors.kPrimaryColor,
//                 backgroundImage:
//                     AssetImage("assets/images/profil/muslim baby girl.png"),
//               ),
//               const SizedBox(width: 10),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Hello Jaken!",
//                     style: Theme.of(context).textTheme.headlineSmall,
//                   ),
//                   Row(
//                     children: [
//                       const Icon(
//                         Iconsax.map_1,
//                         color: BColors.kPrimaryColor,
//                       ),
//                       const SizedBox(width: 10),
//                       Text(
//                         "Lomé",
//                         style: Theme.of(context).textTheme.bodySmall,
//                       )
//                     ],
//                   )
//                 ],
//               ),
//               const Spacer(),
//               Icon(
//                 Iconsax.sms_notification,
//                 size: 35,
//                 color: dark
//                     ? BColors.kDarkPrimaryButtonColor
//                     : BColors.kPrimaryColor,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
