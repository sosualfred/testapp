import 'package:slugify/slugify.dart';

void main() {
  News news1 = News(
    title: 'Hello World to Class',
    body: 'This class is very awesome',
    author: Author(name: "Sosu Alfred"),
    publishedAt: DateTime.now(),
    category: Category(name: "Programming"),
  );

  news1.displayNews();
  news1.printAuthor();
  news1.printCategory();
  news1.printPublishedAt();
}

class News {
  String title;
  String slug;
  String body;
  String featuredImage;
  Author author;
  DateTime publishedAt;

  Category category;

  News(
      {required this.title,
      this.slug = "",
      required this.body,
      this.featuredImage = "",
      required this.author,
      required this.publishedAt,
      required this.category}) {
    if (slug == "") {
      slug = slugify(title);
    }
  }

  void displayNews() {
    print("Title: $title");
    print("Slug: $slug");
    print("Description: $body");
    print("Featured Image: $featuredImage");
    print("Author: ${author.name}");
    print("Published At: $publishedAt");
    print("Category: ${category.name}");
  }

  void printAuthor() {
    print("Author Name: ${author.name}, Author Email: ${author.email}");
  }

  void printCategory() {
    print("Category Name: ${category.name}");
  }

  void printPublishedAt() {
    print("Published At: $publishedAt");
  }
}

class Category {
  String name;

  Category({required this.name});
}

class Author {
  String name;
  String email;

  Author({required this.name, this.email = ""});
}
