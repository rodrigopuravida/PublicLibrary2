//
//  DetailViewController.swift
//  MyTableViewDemo
//
//  Created by Bradley Johnson on 11/5/14 and hacked by Rodrigo Carballo for coding challenge
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var selectedShelf = Shelf()
    
    var books = [Book]()
    var booksInThisShelf = [Book]()
    var titleBooksInShelf = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var book1 = Book(titleName: "Moby Dick", shelfLocation: 1)
        var book2 = Book(titleName: "Dracula", shelfLocation: 2)
        var book3 = Book(titleName: "Hamlet", shelfLocation: 2)
        self.books = [book1, book2, book3]

        
        self.title = "Books for Shelf # " + String(self.selectedShelf.shelfNumber)
        
        self.booksInThisShelf = selectedShelf.BooksHeldInShelf(self.books)
        
        for i in 0...self.booksInThisShelf.count - 1
        {
            titleBooksInShelf += booksInThisShelf[i].title + " "
        }
        
        self.nameLabel.text = titleBooksInShelf
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
