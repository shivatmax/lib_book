import 'package:flutter/material.dart';
import 'package:lithabit/widgets/keep_reading_section.dart';
import 'package:lithabit/widgets/last_opened_book.dart';
import '../../widgets/filters/filter_row_section.dart';
import '../../widgets/filters/search_bar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Library",
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [

              LastOpenedBook(),
              KeepReadingSection(text: "Favorite Books",),
              SizedBox(height: 24),
              KeepReadingSection(text: "Popular Books",),
              SizedBox(height: 24),
              KeepReadingSection(text: "History",),
            ],
          ),
        ),
      ),
    );
  }
}
