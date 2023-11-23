import 'package:flutter/material.dart';
import 'package:flutter_shop_ui/constants.dart';
import 'package:flutter_shop_ui/models/Category.dart';
import 'package:flutter_shop_ui/models/Product.dart';
import 'package:flutter_shop_ui/screens/home/components/Popular.dart';
import 'package:flutter_shop_ui/screens/home/components/categories.dart';
import 'package:flutter_shop_ui/screens/home/components/new_arrival.dart';
import 'package:flutter_shop_ui/screens/home/components/product_card.dart';
import 'package:flutter_shop_ui/screens/home/components/search_form.dart';
import 'package:flutter_shop_ui/screens/home/components/section_title.dart';
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
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: defaultPadding / 2),
            Text(
              "15/2 New Texas",
              style: Theme.of(context).textTheme.titleSmall,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          ),
        ],
      ),
      body: SingleChildScrollView(
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
            const Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const SizedBox(height: defaultPadding),
            const NewArrival(),
            const SizedBox(height: defaultPadding),
            const Popular(),
          ],
        ),
      ),
    );
  }
}


