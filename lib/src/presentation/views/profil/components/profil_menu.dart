import 'package:bulletos_v2/config/constants/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfilMenuWidget extends StatelessWidget {
  const ProfilMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.endIcon = true,
    required this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final bool endIcon;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: BColors.kPrimaryColor.withOpacity(0.1)),
        child: Icon(icon, color: BColors.kPrimaryColor),
      ),
      title: Text(title, style: Theme.of(context).textTheme.titleLarge),
      trailing: endIcon
          ? Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.1)),
              child: Icon(Iconsax.arrow_right, color: BColors.grey),
            )
          : null,
    );
  }
}
