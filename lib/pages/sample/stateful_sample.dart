// import 'package:flutter/material.dart';
//
// class Book {
//   final String id;
//   final String title;
//   bool isFavorite = false;
//
//   Book(this.id, this.title);
//
//   void toggleFavorite() => isFavorite = !isFavorite;
// }
//
// class BookshelfScreen extends StatefulWidget {
//   @override
//   _BookshelfScreenState createState() => _BookshelfScreenState();
// }
//
// class _BookshelfScreenState extends State {
//   List<Book> books = [
//     Book('1', 'Harry Potter'),
//     Book('2', 'FACTFULNESS'),
//   ];
//
//   void toggleFavorite(String id) {
//     setState(() {
//       books.firstWhere((book) => book.id == id).toggleFavorite();
//     });
//   }
//
//   int get favoriteCount => books.where((book) => book.isFavorite).length;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Book List'),
//       ),
//       body: Center(
//         child: SizedBox(
//           height: 200,
//           child: Column(
//             children: [
//               Expanded(
//                 child: Bookshelf(books, toggleFavorite),
//               ),
//               Center(
//                 child: Text('total favorite count: $favoriteCount'),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Bookshelf extends StatelessWidget {
//   final List<Book> books;
//   final Function(String) toggleFavorite;
//
//   const Bookshelf(this.books, this.toggleFavorite);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: books.length,
//       itemBuilder: (context, index) => BookItem(
//         books[index],
//         toggleFavorite,
//       ),
//     );
//   }
// }
//
// class BookItem extends StatelessWidget {
//   final Book book;
//   final Function(String) toggleFavorite;
//
//   const BookItem(this.book, this.toggleFavorite);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Text(book.id),
//       title: Text(book.title),
//       trailing: IconButton(
//         icon: Icon(book.isFavorite ? Icons.star : Icons.star_border),
//         onPressed: () => toggleFavorite(book.id),
//       ),
//     );
//   }
// }
