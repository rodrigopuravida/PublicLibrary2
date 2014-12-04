//
//  Book.swift
//  PublicLibrary
//
//  Created by Rodrigo Carballo on 12/3/14.
//  Copyright (c) 2014 Rodrigo Carballo. All rights reserved.
//

import Foundation

class Book {
    //the books;' properties
    var title : String
    var bookShelfLocation : Int
    
    
    //the book's init
    init(titleName : String, shelfLocation : Int) {
        self.title = titleName
        self.bookShelfLocation = shelfLocation
        
    }
    
    //method that returns the book's title
    func titleName() -> String {
        
        return self.title
    }
    
    //method that returns the book's shelf location
    func bookLocation() -> Int {
        
        return self.bookShelfLocation
    }
    
    //method that enshelfs a book and returns shelf location
    func enshelf(shelfNumber: Int) -> Int {
        
        return shelfNumber
    }
    
    //method that unshelfs a book
    func unshelf() {
        
        self.bookShelfLocation = 0
        
    }
    
}
