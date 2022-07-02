//
//  CryptocurrencyModel.swift
//  cryptocurrencies-app
//
//  Created by Fyodor Vladimirov on 23.06.2022.
//

import Foundation

protocol CryptocurrencyModelProtocol {
    
    func cryptocurrencyRetrieved(_ cryptocurrencies: [Cryptocurrency])
    
}

class CryptocurrencyModel {
    
    var delegate: CryptocurrencyModelProtocol?

    
    func getCryptocurrencies() {
        
        // Инициализация множества криптовалют
        var arrayOfCryptocurrencies = [Cryptocurrency]()
        
        // Fire off request to the API
        
        // Create a string URL
        //let stringUrl = "https://data.messari.io/api/v1/assets/btc/metrics"
        
        // Array of stringUrl requests
        let sringUrlRequests = ["https://data.messari.io/api/v1/assets/btc/metrics", "https://data.messari.io/api/v1/assets/eth/metrics", "https://data.messari.io/api/v1/assets/tron/metrics", "https://data.messari.io/api/v1/assets/luna/metrics", "https://data.messari.io/api/v1/assets/polkadot/metrics", "https://data.messari.io/api/v1/assets/dogecoin/metrics", "https://data.messari.io/api/v1/assets/tether/metrics" ]
        
        
        for stringUrl in sringUrlRequests {
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
                        
                        
                        // Add cryptocurrency to arrayOfCryptocurrencies
                        arrayOfCryptocurrencies.append(cryptocurrency)
                        
                        
                    }
                    catch {
                        print("Error parsing the json")
                    } // End do catch
                    
                    
                } // End if
                
                // Pass it back to the view controller in the main thread
                DispatchQueue.main.async {
                    self.delegate?.cryptocurrencyRetrieved(arrayOfCryptocurrencies)
                }

            } // End Data Task
            
            // Start the data task
            dataTask.resume()
        }
        
            
    }
                
}
    
