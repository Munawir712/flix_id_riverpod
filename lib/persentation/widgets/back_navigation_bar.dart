import 'package:flix_id_riverpod/persentation/misc/methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BackNavigationBar extends ConsumerWidget {
  final String title;
  final VoidCallback? onTap;
  const BackNavigationBar(this.title, {super.key, this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: SizedBox(
            height: 40,
            width: 40,
            child: Image.asset('assets/back.png'),
          ),
        ),
        horizontalSpaces(20),
        SizedBox(
          width: MediaQuery.of(context).size.width - 60 - 48,
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
