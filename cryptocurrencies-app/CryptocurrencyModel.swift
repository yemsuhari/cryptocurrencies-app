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
        let stringUrl = "https://data.messari.io/api/v1/assets/btc/metrics"
        
        // Create a URL object
        let url = URL(string: stringUrl)
        
        // Check that isn't nil
        guard url != nil else {
            print("Couldn't create")
            return
        }
        
        // Get the URL Session
        let session = URLSession.shared
        
        // Create the data task
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            // Check that there are no errors and that there is data
            if error == nil && data != nil {
                // Attempt to parse the JSON
                let decoder = JSONDecoder()
                
                do {
                    // Parse the json into Cryptocurrency
                    let cryptocurrency = try decoder.decode(Cryptocurrency.self, from: data!)
                    
                    // Pass it back to the view controller in the main thread
                    DispatchQueue.main.async {
                        self.delegate?.cryptocurrencyRetrieved(cryptocurrency)
                    }
                    
                }
                catch {
                    print("Error parsing the json")
                } // End do catch
            } // End if

        } // End Data Task
        
        // Start the data task
        dataTask.resume()
        
    }
    
}
