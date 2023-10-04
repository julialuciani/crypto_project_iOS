import Foundation

struct CurrentDataModel: Codable {
    let id: String
    let symbol: String
    let name: String
    let currentDataDescription: [String: String]
    let marketCapRank: Int?
    let image: ImageModel
    let marketData: MarketDataModel
    let lastUpdated: Date
    
    enum CodingKeys: String, CodingKey {
        case id
        case symbol
        case name
        case currentDataDescription = "description"
        case marketCapRank = "market_cap_rank"
        case image
        case marketData = "market_data"
        case lastUpdated = "last_updated"
    }
}


struct ImageModel: Codable{
    let thumb: String
    let small: String
    let large: String
}

struct MarketDataModel: Codable{
    let currentPrice: [String: Double]
    let marketCap: [String: Double]
    let fullyDilutedValuation: [String: Double]
    let totalVolume: [String: Double]
    let high24: [String: Double]
    let low24: [String: Double]
    let priceChangePercentage1HInCurency: [String: Double]
    let priceChangePercentage24HInCurency: [String: Double]
    let priceChangePercentage7DInCurency: [String: Double]
    let priceChangePercentage14DInCurency: [String: Double]
    let priceChangePercentage30DInCurency: [String: Double]
    let priceChangePercentage60DInCurency: [String: Double]
    let priceChangePercentage1yInCurency: [String: Double]
    let ath: [String: Double]
    let athChangePercentage: [String: Double]
    let athDate: [String: Date]
    let atl: [String: Double]
    let atlChangePercentage: [String: Double]
    let atlDate: [String: Date]
    let totalSupply: Double?
    let maxSupply: Double?
    let circulatingSupply: Double
    
    
    enum CodingKeys: String, CodingKey {
       case  currentPrice = "current_price"
        case marketCap = "market_cap"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24 = "high_24h"
        case  low24 = "low_24h"
        case  priceChangePercentage1HInCurency = "price_change_percentage_1h_in_currency"
        case  priceChangePercentage24HInCurency = "price_change_percentage_24h_in_currency"
        case  priceChangePercentage7DInCurency =
                "price_change_percentage_7d_in_currency"
        case   priceChangePercentage14DInCurency =
                "price_change_percentage_14d_in_currency"
        case   priceChangePercentage30DInCurency =
                "price_change_percentage_30d_in_currency"
        case   priceChangePercentage60DInCurency =
                "price_change_percentage_60d_in_currency"
        case   priceChangePercentage1yInCurency =
                "price_change_percentage_1y_in_currency"
        case  ath
        case   athChangePercentage = "ath_change_percentage"
        case  athDate = "ath_date"
        case  atl
        case  atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case totalSupply = "total_supply"
        case  maxSupply = "max_supply"
        case  circulatingSupply = "circulating_supply"
    }
}
