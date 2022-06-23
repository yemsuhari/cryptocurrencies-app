//
//  CryptocurrencyModel.swift
//  cryptocurrencies-app
//
//  Created by Fyodor Vladimirov on 23.06.2022.
//

import Foundation

protocol CryptocurrencyModelProtocol {
    
    func cryptocurrencyRetrieved(_ cryptocurrency: Cryptocurrency)
    
}

class CryptocurrencyModel {
    
    var delegate: CryptocurrencyModelProtocol?
    
    func getCryptocurrencies() {
        // Fire off request to the API
        
        // Create a string URL
        
        // Create a URL object
        
        
        
        // Parse the returned JSON into cryptocurrencies instances and pass it back to the view controller with protocol and delegate pattern
        delegate?.cryptocurrencyRetrieved(Cryptocurrency())
        
    }
    
}
