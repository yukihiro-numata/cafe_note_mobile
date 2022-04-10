import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Book {
  final String id;
  final String title;
  bool isFavorite = false;

  Book(this.id, this.title);

  void toggleFavorite() => isFavorite = !isFavorite;
}

class Books with ChangeNotifier {
  List<Book> books = [
    Book('1', 'Harry Potter'),
    Book('2', 'FACTFULNESS'),
  ];

  Book findById(String id) {
    return books.firstWhere((book) => book.id == id);
  }

  void toggleFavorite(String id) {
    final book = findById(id);
    book.toggleFavorite();
    notifyListeners();
  }

  int get favoriteCount => books.where((book) => book.isFavorite).length;
}

class BookshelfScreen extends StatelessWidget {
  const BookshelfScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final booksData =
        Provider.of<Books>(context); // リビルドされる(Widgetがnotifyの対象になる)
    // Provider.of<Books>(context, listen: false) // リビルドされない
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book List'),
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          child: Column(
            children: [
              Expanded(
                child: Bookshelf(booksData.books),
              ),
              Center(
                child: Text('total favorite count: ${booksData.favoriteCount}'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Bookshelf extends StatelessWidget {
  final List<Book> books;

  const Bookshelf(this.books);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) => BookItem(
        books[index].id,
      ),
    );
  }
}

class BookItem extends StatelessWidget {
  final String bookId;

  const BookItem(this.bookId);

  @override
  Widget build(BuildContext context) {
    final booksData = Provider.of<Books>(context);
    final book = booksData.findById(bookId);
    return ListTile(
      leading: Text(book.id),
      title: Text(book.title),
      trailing: IconButton(
        icon: Icon(book.isFavorite ? Icons.star : Icons.star_border),
        onPressed: () => booksData.toggleFavorite(bookId),
      ),
    );
  }
}
