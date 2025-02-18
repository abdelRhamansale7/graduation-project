import 'package:flutter/material.dart';
import 'package:pharera/generated/l10n.dart';

import 'app_text_widget.dart';
import 'favorite_button_category_widget.dart';

class favpage extends StatefulWidget {
  const favpage({super.key});

  @override
  State<favpage> createState() => _favpageState();
}

class _favpageState extends State<favpage> {
  

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [S.of(context).image, S.of(context).Show, S.of(context).video];
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 226, 226),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 226, 226),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               AppTextWidget(
                title: S.of(context).top,
                fontSize: 32,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: screenWidth*0.9,
                height: screenHeight*0.15,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              ),
               SizedBox(
                height: screenHeight*0.009,
              ),
              AppTextWidget(
                title: S.of(context).category,
                fontSize: 32,
              ),
               SizedBox(
                height: screenHeight *0.008,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (ctx, i) {
                    return FavoriteButtonCategoryWidget(
                      title: titles[i],
                    );
                  },
                  separatorBuilder: (ctx, i) {
                    return const SizedBox(height: 24);
                  },
                  itemCount: titles.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
