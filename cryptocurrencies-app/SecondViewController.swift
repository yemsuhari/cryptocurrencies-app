//
//  SecondViewController.swift
//  cryptocurrencies-app
//
//  Created by Fyodor Vladimirov on 20.06.2022.
//

import UIKit

class SecondViewController: UIViewController, CryptocurrencyModelProtocol {
    
    
    var model = CryptocurrencyModel()
    
    var cryptocurrencies = [Cryptocurrency]()
    
    var contentView:UIView = UIView()
    var uiTableView:UITableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up cryptocurrencies list
        model.delegate = self
        model.getCryptocurrencies()
        
        
        
        
        func setUpContentView() {
            self.view.addSubview(contentView)
            
            contentView.translatesAutoresizingMaskIntoConstraints = false
            
            contentView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
            contentView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
            contentView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
            contentView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        }
        
        func setUpUiTableView() {
            contentView.addSubview(uiTableView)
            
            uiTableView.translatesAutoresizingMaskIntoConstraints = false
            
            uiTableView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
            uiTableView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
            uiTableView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
            uiTableView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
            
            uiTableView.register(MyCell.self, forCellReuseIdentifier: MyCell.identifier)
            uiTableView.dataSource = self
            uiTableView.delegate = self
            
            //uiTableView.sectionHeaderHeight = 40
            //uiTableView.rowHeight = UITableView.automaticDimension
            
        }
        
        
        
        
        setUpContentView()
        setUpUiTableView()

        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Halol")
    }
    
    
    // CryptocurrencyModel delegate methods
    func cryptocurrencyRetrieved(_ cryptocurrencies: [Cryptocurrency]) {
        self.cryptocurrencies = cryptocurrencies
        
        // Reload data
        uiTableView.reloadData()
    }
    


}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return cryptocurrencies.count
        return cryptocurrencies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MyCell.identifier, for: indexPath as IndexPath) as! MyCell
        
        cell.cryptocurrencyName.text = cryptocurrencies[indexPath.row].data?.name
        
        let price = (round((cryptocurrencies[indexPath.row].data?.market_data?.price_usd ?? 0)*10000))/10000
        
        cell.cryptocurrencyPrice.text = "\(price)$"
        
        return cell
    }
    
    
}

// Test commit
