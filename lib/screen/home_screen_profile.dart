import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:manag_app/utils/constants.dart';
import 'package:manag_app/widget/profile_account_info.dart';

class HomeProfileTab extends StatefulWidget {
  const HomeProfileTab({super.key});

  @override
  State<HomeProfileTab> createState() => _HomeProfileTabState();
}

class _HomeProfileTabState extends State<HomeProfileTab> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        elevation: 0,
        backgroundColor: Color(0xFF3A8891),
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: fontSubHeading,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: defaultSpacing),
            child: Icon(
              Icons.settings,
              color: fontSubHeading,
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: defaultSpacing,
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(defaultRadius)),
                      child: Image.network(
                        "https://user-images.githubusercontent.com/87476402/204075281-2b37cfd0-08a2-4a53-af59-1fcd06139c1b.png",
                        width: 100,
                      ),
                    ),
                    const SizedBox(
                      height: defaultSpacing / 3,
                    ),
                    Text(
                      "Ramadhani Qi",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w700, color: fontHeading),
                    ),
                    Text(
                      "dhaniezz11@gmail.com",
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontWeight: FontWeight.w400, color: fontSubHeading),
                    ),
                    const SizedBox(
                      height: defaultSpacing / 2,
                    ),
                    const Chip(
                      backgroundColor: primaryLight,
                      label: Text("Edit Profile"),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: defaultSpacing),
                    child: Text(
                      "General",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w700, color: fontHeading),
                    ),
                  ),
                  const SizedBox(
                    height: defaultSpacing,
                  ),
                  const GeneralAccountInfoTile(
                      title: "Bank Location",
                      subTitle: "7201 Grand, Eva, Flushing NY0921",
                      imageUrl:
                          "https://user-images.githubusercontent.com/87476402/204093838-545978f7-bc29-4afc-8091-cf557dcd3ae2.png"),
                  const GeneralAccountInfoTile(
                      title: "My Wallet",
                      subTitle: "Manage your saved wallet",
                      imageUrl:
                          "https://user-images.githubusercontent.com/87476402/204093689-b748e1a8-865e-429e-8b58-30dfa27b060b.png"),
                  const SizedBox(
                    height: defaultSpacing,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: defaultSpacing),
                    child: Text(
                      "Account",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w700, color: fontHeading),
                    ),
                  ),
                  const SizedBox(
                    height: defaultSpacing,
                  ),
                  // const ProfileAccountInfoTile(
                  //   title: "My Account",
                  //   subTitle: "Ramadhani",
                  //   imageUrl: "assets/icons/location-1.png",
                  // ),
                  // const ProfileAccountInfoTile(
                  //     title: "Notifikasi",
                  //     subTitle: "1 Notifikasi",
                  //     imageUrl: "assets/icons/location-1.png"),
                  // const SizedBox(
                  //   height: defaultSpacing,
                  // ),
                  // const ProfileAccountInfoTile(
                  //   title: "Privacy",
                  //   subTitle: "Setting Privacy",
                  //   imageUrl: "assets/icons/location-1.png",
                  // ),
                  // // const ProfileAccountInfoTile(
                  // //     title: "About",
                  // //     subTitle: "About the Aplication",
                  // //     imageUrl: "assets/icons/location-1.png"),
                  // // // const SizedBox(
                  // // //   height: defaultSpacing,
                  // // // ),
                  //  TODO build account title widgets
                  const ProfileAccountInfoTile(
                    imageUrl:
                        "https://user-images.githubusercontent.com/87476402/204075228-b517fc14-6605-41eb-9183-f16b429eb7a7.png",
                    heading: "My Account",
                  ),
                  const SizedBox(
                    height: defaultSpacing,
                  ),
                  const ProfileAccountInfoTile(
                    imageUrl:
                        "https://user-images.githubusercontent.com/87476402/204093838-545978f7-bc29-4afc-8091-cf557dcd3ae2.png",
                    heading: "Notifikasi",
                  ),
                  const SizedBox(
                    height: defaultSpacing,
                  ),
                  const ProfileAccountInfoTile(
                    imageUrl:
                        "https://user-images.githubusercontent.com/87476402/204093893-3829db02-d792-4b1b-a7b9-a077e497d416.png",
                    heading: "Privacy",
                  ),
                  const SizedBox(
                    height: defaultSpacing,
                  ),
                  const ProfileAccountInfoTile(
                    imageUrl: "",
                    heading: "About",
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}

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
      leading: Padding(
        padding: const EdgeInsets.only(left: 0, top: defaultSpacing / 2),
        child: Image.network(
          "https://user-images.githubusercontent.com/87476402/204075281-2b37cfd0-08a2-4a53-af59-1fcd06139c1b.png",
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
