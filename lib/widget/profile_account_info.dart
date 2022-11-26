import 'package:flutter/material.dart';
import 'package:manag_app/utils/constants.dart';

class GeneralAccountInfoTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageUrl;
  const GeneralAccountInfoTile(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.imageUrl})
      : super(key: key);
  // ({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: -10,
      leading: Padding(
        padding: const EdgeInsets.only(left: 0, top: defaultSpacing / 2),
        child: Image.network(
          "https://cdn-icons-png.flaticon.com/512/819/819814.png",
        ),
      ),
      title: Text(
        title,
        style:
            Theme.of(context).textTheme.subtitle2?.copyWith(color: fontHeading),
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context)
            .textTheme
            .bodyText2
            ?.copyWith(color: fontSubHeading),
      ),
      trailing: const Icon(
        Icons.keyboard_arrow_right_rounded,
        color: fontSubHeading,
      ),
    );
  }
}

// class ProfileAccountInfoTile extends StatelessWidget {
//   final String title;
//   final String subTitle;
//   final String imageUrl;
//   const ProfileAccountInfoTile(
//       {Key? key,
//       required this.title,
//       required this.subTitle,
//       required this.imageUrl})
//       : super(key: key);
//   // ({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Padding(
//         padding: const EdgeInsets.only(left: 0, top: defaultSpacing / 2),
//         child: Image.network(
//           "https://cdn-icons-png.flaticon.com/512/8924/8924717.png",
//         ),
//       ),
//       title: Text(
//         title,
//         style:
//             Theme.of(context).textTheme.subtitle2?.copyWith(color: fontHeading),
//       ),
//       subtitle: Text(
//         subTitle,
//         style: Theme.of(context)
//             .textTheme
//             .bodyText2
//             ?.copyWith(color: fontSubHeading),
//       ),
//       trailing: const Icon(
//         Icons.keyboard_arrow_right_rounded,
//         color: fontSubHeading,
//       ),
//     );
//   }
// }

class ProfileAccountInfoTile extends StatelessWidget {
  final String iconUrl;
  final String heading;
  const ProfileAccountInfoTile(
      {super.key, required this.iconUrl, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: defaultSpacing * 4),
            child: Image.asset(iconUrl),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultSpacing),
            child: Text(
              heading,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: fontHeading),
            ),
          ),
          const Expanded(
            flex: 2,
            child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: defaultSpacing),
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: fontSubHeading,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
