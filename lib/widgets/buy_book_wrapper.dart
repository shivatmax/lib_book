import 'package:flutter/material.dart';
import 'package:lib_book/models/books.dart';
import 'book_cover_3d.dart';


class BuyBookWrappper extends StatelessWidget {
  final Book book;

  const BuyBookWrappper({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BookCover3D(
            imageUrl: book.imageUrl,
          ),
          Text(
            book.price <= 0 ? "Free" : "${book.price} €",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
