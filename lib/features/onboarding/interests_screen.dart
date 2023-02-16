import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const interests = [
      "Daily Life",
      "Comedy",
      "Entertainment",
      "Animals",
      "Food",
      "Beauty & Style",
      "Drama",
      "Learning",
      "Talent",
      "Sports",
      "Auto",
      "Family",
      "Fitness & Health",
      "DIY & Life Hacks",
      "Arts & Crafts",
      "Dance",
      "Outdoors",
      "Oddly Satisfying",
      "Home & Garden",
      "Daily Life",
      "Comedy",
      "Entertainment",
      "Animals",
      "Food",
      "Beauty & Style",
      "Drama",
      "Learning",
      "Talent",
      "Sports",
      "Auto",
      "Family",
      "Fitness & Health",
      "DIY & Life Hacks",
      "Arts & Crafts",
      "Dance",
      "Outdoors",
      "Oddly Satisfying",
      "Home & Garden",
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Choose your interests'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: Sizes.size24,
          right: Sizes.size24,
          bottom: Sizes.size16,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.v32,
              Text(
                'Choose your interests',
                style: TextStyle(
                  fontSize: Sizes.size40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gaps.v20,
              Text(
                'Get better video recommendation',
                style: TextStyle(
                  fontSize: Sizes.size20,
                ),
              ),
              Gaps.v64,
              Wrap(
                runSpacing: 15, //세로 간격조정
                spacing: 15, //가로 간격 조정
                children: [
                  for (var interest in interests)
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 24,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          Sizes.size32,
                        ),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.1),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 5,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Text(
                        interest,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.only(
            top: Sizes.size16,
            left: Sizes.size24,
            right: Sizes.size24,
            bottom: Sizes.size40,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: Sizes.size20,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              "Next",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: Sizes.size20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
