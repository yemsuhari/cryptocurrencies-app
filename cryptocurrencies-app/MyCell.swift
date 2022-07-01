//
//  MyCell.swift
//  cryptocurrencies-app
//
//  Created by Fyodor Vladimirov on 01.07.2022.
//

import UIKit

class MyCell: UITableViewCell {

    static let identifier = "MyCell"
    
    var cryptocurrencyName = UILabel()
    
    var cryptocurrencyPrice = UILabel()
    
    func setUpCryptocurrencyName() {
        contentView.addSubview(cryptocurrencyName)
        
        
        cryptocurrencyName.translatesAutoresizingMaskIntoConstraints = false
        
        cryptocurrencyName.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50).isActive = true
        cryptocurrencyName.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        cryptocurrencyName.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        cryptocurrencyName.font = cryptocurrencyName.font.withSize(25)
        
        //cryptocurrencyName.text =  "Bitcoin"
        
    }
    
    func setUpCryptocurrencyPrice() {
        contentView.addSubview(cryptocurrencyPrice)
        
        
        cryptocurrencyPrice.translatesAutoresizingMaskIntoConstraints = false
        
        cryptocurrencyPrice.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -50).isActive = true
        cryptocurrencyPrice.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        cryptocurrencyPrice.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
        cryptocurrencyPrice.font = cryptocurrencyPrice.font.withSize(25)
        
        //cryptocurrencyPrice.text =  "300$"
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
        setUpCryptocurrencyName()
        setUpCryptocurrencyPrice()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
