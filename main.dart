void main() {
var bigLibrary = Library();

bigLibrary.addBook(Books(bookID: 200, bookTitle: "it ends with us"));
bigLibrary.addBook(Books(bookID: 201, bookTitle: "Arcane", borrowedState: true));
bigLibrary.returnBook(Books(bookID: 201, bookTitle: "Arcane"));
bigLibrary.addUsers(user(userID: "C200", userName: "Moustafa Maher"));
bigLibrary.addUsers(user(userID: "D420", userName: "Sprints"));



bigLibrary.displayInfo();

}

//Books Class
class Books {
  int bookID;
  String bookTitle;
  bool borrowedState;

  Books({ required this.bookID, required this.bookTitle, this.borrowedState = false});


  void displayBooks(){
    if (borrowedState == true) {
      print("Your Book ID is $bookID , the book Title is $bookTitle , this book is borrowed");
    } else {
      print("Your Book ID is $bookID , the book Title is $bookTitle , this book is available");
    }

  }
}

//User Class
class user {
  String userID;
  String userName;
  user({required this.userID, required this.userName});

  void displayUserInfo(){
    print("Your name is $userName , and you ID is $userID");
  }
}

//Library Class
class Library{
  List<Books> books = [];
  List<user> users = [];

  void addBook(Books bookName){
    books.add(bookName);
    print("The \"${bookName.bookTitle}\" has been added to your library");
  }

  void addUsers(user userName){
    users.add(userName);
    print("The user: ${userName.userName} has been succsesfully added to the system");
  }

  void returnBook(Books bookName){
    books.remove(bookName);
  }

  void borrowBook(Books bookName){
    if (bookName.borrowedState == true) {
      print('Sorry but this book is borrowed. Come back later');
    } else {
      print('You have borrowed ${bookName.bookTitle}');
      books.remove(bookName);
    }
  }

  void displayInfo(){
    print('The available books are: ');
    for (var book in books) {
      print('${book.bookTitle}');
    }
  }

}

