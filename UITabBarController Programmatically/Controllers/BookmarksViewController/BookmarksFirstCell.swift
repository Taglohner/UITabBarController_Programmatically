//
//  BookmarksFirstCell.swift
//  UITabBarController Programmatically
//
//  Created by Steven Taglohner on 29/01/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

class BookmarksFirstCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "lorem lipsum"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    func setupViews() {
        
        // sub views
        addSubview(nameLabel)
        
        // constraints
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[h0]-16-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["h0" : nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : nameLabel]))
    }
    
}
