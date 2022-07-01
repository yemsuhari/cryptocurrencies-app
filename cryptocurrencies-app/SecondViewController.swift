//
//  SecondViewController.swift
//  cryptocurrencies-app
//
//  Created by Fyodor Vladimirov on 20.06.2022.
//

import UIKit

class SecondViewController: UIViewController, CryptocurrencyModelProtocol {
    
    
    var cryptocurrencies = [Cryptocurrency]()
    
    var contentView:UIView = UIView()
    var background:UIImageView = UIImageView()
    var uiScrollView:UIScrollView = UIScrollView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Set up cryptocurrencies list
        var model = CryptocurrencyModel()
        model.getCryptocurrencies()
        
        
        
        func setUpContentView() {
            self.view.addSubview(contentView)
            
            contentView.translatesAutoresizingMaskIntoConstraints = false
            
            contentView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
            contentView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
            contentView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
            contentView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        }
        
        func setUpBackground() {
            contentView.addSubview(background)
            
            background.image = UIImage(named: "Background")
            
            background.translatesAutoresizingMaskIntoConstraints = false
            
            background.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
            background.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
            background.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
            background.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
            
        }
        
        setUpContentView()
        setUpBackground()

        
        
    }
    
    
    // CryptocurrencyModel delegate methods
    func cryptocurrencyRetrieved(_ cryptocurrencies: [Cryptocurrency]) {
        self.cryptocurrencies = cryptocurrencies
        
        // Reload data
    }
    


}

// Fix commit message
