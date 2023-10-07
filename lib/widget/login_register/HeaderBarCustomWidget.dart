import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const HeadBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 132,
      centerTitle: true,
      backgroundColor: Colors.blue.shade50,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            CupertinoIcons.shield_lefthalf_fill,
            color: Colors.deepPurple.shade800,
            size: 40,
          ),
          SizedBox(width: 10),
          Text(
            'Smart Security',
            style: Theme.of(context).textTheme.headline1
          ),
        ],
      )

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(132);
}
