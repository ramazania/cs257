'''
book.py
Allows bookdatasource.py to be used with the command line and implements the commands from usage.txt
Authors: Cathy Duan and Ali Ramazani
Revised by Cathy Duan and Ali Ramazani
'''

import sys
from booksdatasource import Author, Book, BooksDataSource
  
user_input = sys.argv[1:] # Ignores book.py in the command line

data_source = BooksDataSource("books1.csv")

# Prints the contents of a book object as a single line
def book_print(books):
    for book in books:
        if (len(book.authors) > 1): # If a book has multiple authors
            print(book.title + " (" + book.publication_year + ") by " +  book.authors[0].given_name, 
                    book.authors[0].surname +" and "+ book.authors[1].given_name, book.authors[1].surname)
        else:
            print(book.title + " (" + book.publication_year + ") by " +  book.authors[0].given_name, book.authors[0].surname)

# Prints the contents of an author object as a single line
def author_print(authors):
    for author in authors:
        print(author.given_name, author.surname)

    
# Prints the usage statement when prompted
if sys.argv[1] == "--help" or sys.argv[1] == "-h":
    file = open("usage.txt")
    print(file.read())

# Checks for the book command and prints a list of books accordingly    
elif sys.argv[1] == "book" or sys.argv[1] == "-b":
    length = len(user_input)
    if length < 3: # If the user writes 2 or less inputs using the book command
        if length < 2: # If the user's input is only the book command
            sort = "" # Sorting set to default (title sort)
            keyWord = None
        else: 
            if sys.argv[2] == "--year_sort" or sys.argv[2] == "-ys" or sys.argv[2] == "--title_sort" or sys.argv[2] == "-ts": # If sorting is specified but there is no keyword
                sort = sys.argv[2]
                keyWord = None
            else:
                sort = "" # If a keyword is given but there is no sorting specified, set to default (title sort)
                keyWord = sys.argv[2]  
    else:
        sort = sys.argv[3]
        keyWord = sys.argv[2]

    # Print a list of books depending on the sort type and keyword
    if sort == "--title_sort" or sort == "-ts" or sort == "":
        books = data_source.books(keyWord, "title")
        book_print(books)
    elif sort == "--year_sort" or sort == "-ys":
        books = data_source.books(keyWord, "year")
        book_print(books)
    else:
        print("Invalid sort option") 
        

# Checks for the author command and prints a list of authors accordingly
elif sys.argv[1] == "author" or sys.argv[1] =="-a":
    length = len(user_input)
    if length < 2: # If the input is only the author command
        keyWord = None
    else:
        keyWord = sys.argv[2]
    authors = data_source.authors(keyWord)
    author_print(authors)

# Checks for the year command and prints a list of books within the given year range.
# Users must write three fields (not including books.py). 
# If they do not specify a start or end year, they must type 'None'.
elif sys.argv[1] == "year" or sys.argv[1] == "-y":
    if sys.argv[2] == "None":
        sys.argv[2] = None
    if sys.argv[3] == "None":
        sys.argv[3] = None
    books = data_source.books_between_years(sys.argv[2], sys.argv[3])
    book_print(books)
    
