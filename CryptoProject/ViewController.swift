//
//  ViewController.swift
//  crypto_project
//
//  Created by Julia Oliveira on 02/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       let dataProvider = CoinsListDataProvider()
        dataProvider.delegate = self
        dataProvider.fetchCoinsList(by:"brl", with: nil, orderBy: "market_cap_desc", total: 10, page: 1, percentagePrice: "1h")
    }
}

extension ViewController: CoinsListDataProviderDelegate{
    func sucess(model: Any){
      let coinsList = model as? [CoinModel]
        print(coinsList ?? "Empty")
    }
    
    func errorData(_ provider: GenericDataProviderDelegate?, error: Error){
        print(error.localizedDescription)
    }
}

