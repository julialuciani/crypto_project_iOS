//
//  API.swift
//  CryptoProject
//
//  Created by Julia Oliveira on 02/10/23.
//

import Foundation

struct API{
    static let  baseURL = "https://api.coingecko.com/api/v3"
    static let  coinsMarkets = "/coins/markets"
    static let  coinsByIdMarketChart = "/coins/%@/market_chart/range"
    static let  coinsByIdOhlc = "/coins/%@/ohlc"
    static let  global = "/global"
    static let  coinsById = "/coins/%@"
    
}
