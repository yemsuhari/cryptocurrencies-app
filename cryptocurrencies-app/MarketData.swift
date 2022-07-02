//
//  MarketData.swift
//  cryptocurrencies-app
//
//  Created by Fyodor Vladimirov on 23.06.2022.
//

import Foundation

struct MarketData: Decodable {
    var price_usd : Double?
    var percent_change_usd_last_1_hour: Double?
}
