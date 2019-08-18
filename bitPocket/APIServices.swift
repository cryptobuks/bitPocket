//
//  APIServices.swift
//  bitPocket
//
//  Created by Jerry on 8/18/19.
//  Copyright © 2019 SoftChain Foundation Ltd. All rights reserved.
//

import Foundation
import BitcoinKit
import Alamofire
import SwiftyJSON

class APIClient {
    
    func getTxHistory(address: String, completion: @escaping CompletionHandler) {
        Alamofire.request("\(BASE_URL)rawaddr/\(address)").responseJSON { (response) in
            if response.result.error == nil {
                guard let data = response.data else { return }
                let json = try! JSON(data: data)
                print(json)
            }
        }
    }
    
    func getBalance(address: String, comletion: @escaping CompletionHandler) {
        Alamofire.request("\(BASE_URL)balance?active=\(address)").responseJSON { (response) in
            if response.result.error == nil {
                guard let data = response.data else { return }
                let json = try! JSON(data: data)
                print(json)
            }
        }
    }
    
    
    
}
