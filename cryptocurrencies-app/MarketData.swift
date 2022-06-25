//
//  MarketData.swift
//  cryptocurrencies-app
//
//  Created by Fyodor Vladimirov on 23.06.2022.
//

import Foundation

struct MarketData: Decodable {
    var name: String?
    var price_usd : Double?
}
