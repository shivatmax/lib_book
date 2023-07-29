import 'package:flutter/material.dart';
import '../../widgets/filters/filter_row_section.dart';
import '../../widgets/filters/search_bar.dart';
import '../../widgets/keep_reading_section.dart';



class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All In One",
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchBarSection(),
              SizedBox(height: 24),
              FilterRowSection(),
              SizedBox(height: 24),
              KeepReadingSection(text: "Recently Added",),
              SizedBox(height: 24),
              KeepReadingSection(text: "Popular Books",),
              SizedBox(height: 24),
              KeepReadingSection(text: "Books in Syllabus",),

            ],
          ),
        ),
      ),
    );
  }
}
