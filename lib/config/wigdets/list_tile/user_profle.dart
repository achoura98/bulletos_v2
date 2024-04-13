import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../constants/constant_colors.dart';

class BUserProfile extends StatelessWidget {
  const BUserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 15),
        child: ListTile(
          leading: CircleAvatar(
            maxRadius: 25,
            backgroundColor: BColors.kPrimaryColor,
            backgroundImage: AssetImage("assets/images/profil/profil2.jpg"),
          ),
          title: Text('Jaken Dragneel',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: BColors.white)),
          subtitle: Text(
            'jaken.dragneel@gmail.com',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .apply(color: BColors.white),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.edit,
                color: BColors.white,
              )),
        ));
  }
}
