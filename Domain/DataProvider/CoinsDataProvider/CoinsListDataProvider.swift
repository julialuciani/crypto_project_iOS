import Foundation


protocol CoinsListDataProviderDelegate: GenericDataProviderDelegate{}

class CoinsListDataProvider: DataProviderManager<CoinsListDataProviderDelegate, [CoinModel]> {
   
    private let coinsStore: CoinStoreProtocol?
    
    init(coinsStore: CoinsStore = CoinsStore()){
        self.coinsStore = coinsStore
    }
    
    func fetchCoinsList(by vsCurrency: String,
                        with cryptoCurrency: [String]?,
                        orderBy order: String,
                        total parPage: Int,
                        page: Int,
                        percentagePrice: String
    ) {
        coinsStore?.fetchListCoins(by: vsCurrency, with: cryptoCurrency, orderBy: order, total: parPage, page: page, percentagePrice:
                                    percentagePrice, completion: {
            result, error in
            
            if let error{
                self.delegate?.errorData(self.delegate, error: error)
            }
            
            if let result {
                self.delegate?.sucess(model: result)
            }
        })
    }
}
