'''
   booksdatasourcetest.py
   Jeff Ondich, 24 September 2021
   Authors: Cathy Duan and Ali Ramazani
'''

from booksdatasource import Author, Book, BooksDataSource
import unittest

class BooksDataSourceTester(unittest.TestCase):
    def setUp(self):
        self.data_source = BooksDataSource('books1.csv')

    def tearDown(self):
        pass

    #Checks to see whether an author's name is unique in the csv file
    def test_unique_author(self):
        authors = self.data_source.authors('Pratchett')
        self.assertTrue(len(authors) == 1)
        self.assertTrue(authors[0] == Author('Pratchett', 'Terry')) #This is not passing
        
    #Checks to see whether a book title is unique in the csv file
    def test_unique_title(self):
        titles = self.data_source.books("Emma")
        self.assertTrue(len(titles) == 1)
        self.assertTrue(titles[0] == Book("Emma"))

    #Checks whether all the books are present in the csv file
    def test_all_books(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books()
        self.assertTrue(len(books) == 3)
        self.assertTrue(books[0].title == 'Emma')
        self.assertTrue(books[1].title == 'Neverwhere')
        self.assertTrue(books[2].title == 'Omoo')
        
    #Checks for the valid year by excluding negative numbers
    def test_negative_year(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books()
        self.assertFalse(int(books[0].publication_year) < 0)
        self.assertFalse(int(books[1].publication_year) < 0)
        self.assertFalse(int(books[2].publication_year) < 0)
    
    #Checks whether the given publication year contains only 4 digits
    def test_publication_year_length(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books()
        #test the correctness of code instead of data set
        # books[0].books_between_years(1819, 1891) == book[0]
        self.assertTrue(len(books[0].publication_year) == 4)
        self.assertTrue(len(books[1].publication_year) == 4)
        self.assertTrue(len(books[2].publication_year) == 4)

    #Checks to see whether the inputed date range is followed
    def test_correct_publication_range(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books_between_years(1800,1990)
        self.assertTrue(len(books) == 2)
        self.assertTrue(books[0].title == "Emma")
        self.assertTrue(books[1].title == "Omoo")
    
    #Checks to see whether a given publication year is not in the csv file
    def test_invalid_publication_year(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books()
        invalidYear = 1975
        self.assertFalse((books[0]).publication_year == invalidYear)
        self.assertFalse((books[1]).publication_year == invalidYear)
        self.assertFalse((books[2]).publication_year == invalidYear)
    
    # Checks if a title does not exist in the csv file
    def test_invalid_titles(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books()
        invalidTitle = "Harry Potter"
        self.assertFalse((books[0]).title == invalidTitle)
        self.assertFalse((books[1]).title == invalidTitle)
        self.assertFalse((books[2]).title == invalidTitle)
    
    #Check if an author name does not exist in the csv file - this is the only test of our own that works
    def test_invalid_authors(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        authors = tiny_data_source.authors()
        
        invalidAuthor = "Rowling"
        print(authors)
        self.assertFalse((authors[0].surname) == invalidAuthor)
        self.assertFalse((authors[1].surname) == invalidAuthor)
        self.assertFalse((authors[2].surname) == invalidAuthor) 

   
        
    #Checks to see whether a title list is alphabetically sorted correctly
    def test_title_alphabet_sort(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        books = tiny_data_source.books(None, "title")
        
        self.assertTrue(books[0].title == "Emma" )
        self.assertTrue(books[1].title == "Neverwhere")
        self.assertTrue(books[2].title == "Omoo")

    #Checks to see whether a year list is numerical sorted correctly
    def test_year_numeric_sort(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        years = tiny_data_source.books(None, "year")
        self.assertTrue(years[0].publication_year == "1815")
        self.assertTrue(years[1].publication_year == "1847")
        self.assertTrue(years[2].publication_year == "1996")

    #Checks to see whether an author list is alphabetically sorted correctly
    def test_author_alphabet_sort(self):
        tiny_data_source = BooksDataSource('tinybooks.csv')
        authors = tiny_data_source.authors(None)
        self.assertTrue(authors[0].surname == "Austen")
        self.assertTrue(authors[1].surname == "Gaiman")
        self.assertTrue(authors[2].surname == "Melville")
        

if __name__ == '__main__':
    unittest.main()

