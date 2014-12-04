//
//  ViewController.swift
//  MyTableViewDemo
//
//  Created by Bradley Johnson on 11/5/14 and hacked by Rodrigo Carballo for coding challenge
//  Copyright (c) 2014 Code Fellows. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var library = Library(library: "My Library")
    var shelves = [Shelf]()
    var books = [Book]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = library.LibraryName
        
        var shelf1 = Shelf()
        shelf1.shelfNumber = 1
        var shelf2 = Shelf()
        shelf2.shelfNumber = 2
        self.shelves = [shelf1, shelf2]
        
        var book1 = Book(titleName: "Moby Dick", shelfLocation: 1)
        var book2 = Book(titleName: "Dracula", shelfLocation: 2)
        var book3 = Book(titleName: "Hamlet", shelfLocation: 2)
        self.books = [book1, book2, book3]
        
        
    self.tableView.dataSource = self
    self.tableView.delegate = self
        
        let lists = ["Save","Quit"]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.shelves.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CELL", forIndexPath: indexPath) as UITableViewCell
        
        
        var shelvesToDisplay = self.shelves[indexPath.row]
        cell.textLabel.text = "Shelf # " + String(shelvesToDisplay.shelfNumber)

        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SHOW_DETAIL" {
            let detailViewController = segue.destinationViewController as DetailViewController
            let selectedIndexPath = self.tableView.indexPathForSelectedRow()
            
            var shelfToPass  = self.shelves[selectedIndexPath!.row]
            detailViewController.selectedShelf = shelfToPass
            
            
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//       self.performSegueWithIdentifier("SHOW_DETAIL", sender: self)
//    }

}

