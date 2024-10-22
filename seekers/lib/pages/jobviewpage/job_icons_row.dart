// Row with Java, Chat, and Safety icons
import 'package:flutter/material.dart';
import 'package:seekers/pages/jobviewpage/icon_with_text.dart';

class JobIconsRow extends StatelessWidget {
  const JobIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconWithText(
          imageUrl:
              "https://s3-alpha-sig.figma.com/img/e6a8/e58a/33b5ab9278017f8c6e6050f415bf8792?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ebL2NKpkuTV9546Sv9zzqkN0o1~CBXMvfFsR91BXafKZjEAk5CAFG0jJOC4-Ua8bNODe5HCMXgfAVxArfZzpE1vWVYYfN0APrUA0WAYxh1nlJXrK9Q7vAOpN-PcjLhOV2OCHDUsgJuJHGgahpyR102Wu2Nh2tC4qLo5dv-k71BHCAKAIylL0KNB~0XVW55vZnlacKK2M6tTu73MMvogskQFjeGhmmIAU53Szo8EiyQOWgwwjbcaBAAoUdxjjKmaC8lX-Rh5K~4v14JILA~B4mkvpfXc2mYlpNBHdGgK9wMsH~7i-N6a7PIWVWnKQpRl4ojVGg--RYdQJ59rw26rWlg__",
          label: "Java",
        ),
        IconWithText(icon: Icons.chat_bubble, label: 'Chat'),
        IconWithText(icon: Icons.shield_outlined, label: 'Safety'),
      ],
    );
  }
}
