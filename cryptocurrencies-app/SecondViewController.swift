//
//  SecondViewController.swift
//  cryptocurrencies-app
//
//  Created by Fyodor Vladimirov on 20.06.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var contentView:UIView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func setUpContentView() {
            self.view.addSubview(contentView)
            
            contentView.translatesAutoresizingMaskIntoConstraints = false
            
            contentView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
            contentView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
            contentView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
            contentView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        }
        
        setUpContentView()
        
        contentView.backgroundColor = UIColor.white

        
        
    }
    


}
