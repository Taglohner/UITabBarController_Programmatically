//
//  FavoritesFirstCell.swift
//  CodedTableView
//
//  Created by Steven Taglohner on 15/12/2017.
//  Copyright © 2017 Steven Taglohner. All rights reserved.
//

import UIKit

class FavoritesFirstCell: UITableViewCell {
    
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
    
    let cellButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Action", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setupViews() {
        
        // sub views
        addSubview(nameLabel)
        addSubview(cellButton)
        
        // subviews properties
        cellButton.addTarget(self, action: #selector(cellButtonTapped), for: .touchUpInside)
        
        // constraints
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[h0]-[h1(50)]-16-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["h0" : nameLabel, "h1": cellButton]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : nameLabel]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : cellButton]))
    }
    
    @objc func cellButtonTapped() {
        print("CellButtonTapped touched")
    }
    
}
