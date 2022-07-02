//
//  DetailViewController.swift
//  cryptocurrencies-app
//
//  Created by Fyodor Vladimirov on 02.07.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    var passedCryptocurrency = Cryptocurrency()
    
    var contentView:UIView = UIView()
    
    var cryptocurrencyName = UILabel()
    
    var cryptocurrencyPrice = UILabel()
    
    var percentChangeLabel = UILabel()
    
    
    init(passedCryptocurrency: Cryptocurrency) {
        self.passedCryptocurrency = passedCryptocurrency
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpContentView() {
        self.view.addSubview(contentView)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        contentView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        contentView.backgroundColor = .white
    }
    
    func setUpCryptocurrencyName() {
        contentView.addSubview(cryptocurrencyName)
        
        cryptocurrencyName.translatesAutoresizingMaskIntoConstraints = false
        
        
        cryptocurrencyName.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        
        //cryptocurrencyName.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        //cryptocurrencyName.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        cryptocurrencyName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 50).isActive = true
        //cryptocurrencyName.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        cryptocurrencyName.font = cryptocurrencyName.font.withSize(50)
        
        cryptocurrencyName.text = passedCryptocurrency.data?.name
        
        
    }
    
    func setUpCryptocurrencyPrice() {
        contentView.addSubview(cryptocurrencyPrice)
        
        cryptocurrencyPrice.translatesAutoresizingMaskIntoConstraints = false
        
        
        cryptocurrencyPrice.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        
        //cryptocurrencyName.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        //cryptocurrencyName.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        cryptocurrencyPrice.topAnchor.constraint(equalTo: cryptocurrencyName.topAnchor, constant: 130).isActive = true
        //cryptocurrencyName.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        cryptocurrencyPrice.font = cryptocurrencyName.font.withSize(30)
        
        cryptocurrencyPrice.text = (String((round((passedCryptocurrency.data?.market_data?.price_usd ?? 0)*10000))/10000) + "$")
        
        
    }
    
    
    func setUpPercentChangeLabel() {
        contentView.addSubview(percentChangeLabel)
        
        percentChangeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        percentChangeLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        
        //cryptocurrencyName.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        //cryptocurrencyName.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        percentChangeLabel.topAnchor.constraint(equalTo: cryptocurrencyPrice.topAnchor, constant: 130).isActive = true
        //cryptocurrencyName.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        percentChangeLabel.font = percentChangeLabel.font.withSize(30)
        
        if (passedCryptocurrency.data?.market_data?.percent_change_usd_last_1_hour!)! >= 0 {
            percentChangeLabel.text = (String((round((passedCryptocurrency.data?.market_data?.percent_change_usd_last_1_hour ?? 0)*1000))/1000) + "% last hour")
            percentChangeLabel.textColor = UIColor.green
        }
        else {
            percentChangeLabel.text = (String((round((passedCryptocurrency.data?.market_data?.percent_change_usd_last_1_hour ?? 0)*1000))/1000) + "% last hour")
            percentChangeLabel.textColor = UIColor.red
        }
        
        percentChangeLabel.text = (String((round((passedCryptocurrency.data?.market_data?.percent_change_usd_last_1_hour ?? 0)*1000))/1000) + "% last hour")
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setUpContentView()
        setUpCryptocurrencyName()
        setUpCryptocurrencyPrice()
        setUpPercentChangeLabel()
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
