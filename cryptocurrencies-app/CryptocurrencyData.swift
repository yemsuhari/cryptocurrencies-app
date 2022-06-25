//
//  CryptocurrencyData.swift
//  cryptocurrencies-app
//
//  Created by Fyodor Vladimirov on 23.06.2022.
//

import Foundation

struct CryptocurrencyData: Decodable {
    var name: String?
    var symbol: String?
    var market_data: MarketData?
}
