//
//  Library.swift
//  PublicLibrary
//
//  Created by Rodrigo Carballo on 12/3/14.
//  Copyright (c) 2014 Rodrigo Carballo. All rights reserved.
//

import Foundation

class Library {
    //the Library's properties
    var LibraryName : String
    
    
    //the Library init
    init(library : String) {
        self.LibraryName = library
        
    }
    
    //method that returns the number of shelves
    func ShelvesInLibrary(listOfShelves : [Shelf]) -> Int {
        
        return listOfShelves.count
    }
    
    
    //method that returns the number of books
    func BooksInLibrary(listOfBooks : [Book]) -> [String] {
        
        var bookTitles : [String] = []
        
        for i in 0...bookTitles.count
        {
            bookTitles.append(listOfBooks[i].titleName())
        }
        
        return bookTitles
        
    }
    
}
