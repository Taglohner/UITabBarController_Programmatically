//
//  FavoritesViewController.swift
//  UITabBarController Programmatically
//
//  Created by Steven Taglohner on 29/01/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

class FavoritesViewController: UITableViewController {
    
    var items = ["item 1", "item 2", "item 3", "item 4"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Favorites"
        
        tableView.register(FavoritesFirstCell.self, forCellReuseIdentifier: "FavoritesFirstCell")
        tableView.register(FavoritesHeader.self, forHeaderFooterViewReuseIdentifier: "RootHeader")
        tableView.sectionHeaderHeight = 40
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoritesFirstCell", for: indexPath) as! FavoritesFirstCell
        cell.nameLabel.text = items[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // DO SOMETHING
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return tableView.dequeueReusableHeaderFooterView(withIdentifier: "RootHeader")
    }
    
}
