import 'package:flutter/material.dart';
import 'package:flutter_shop_ui/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){},icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: defaultPadding/2),
            Text(
              "15/2 New Texas",
              style: Theme.of(context).textTheme.titleSmall,
            )
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Notification.svg"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            Text(
              "best Outfits for you",
              style: TextStyle(fontSize: 18),
            ),
            Form(child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
