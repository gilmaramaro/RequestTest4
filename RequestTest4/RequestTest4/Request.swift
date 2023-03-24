//
//  Request.swift
//  RequestTest4
//
//  Created by Gilmar Amaro on 23/03/23.
//

import UIKit
import Alamofire

class Request: NSObject {
    
    var arrayPizza: [PizzaElement]?
    
    func requestPizza( completion: @escaping (Pizza?) -> Void ) {
        AF.request("https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/pizza", method: .get).response { response in
            let pizza = try? JSONDecoder().decode(Pizza.self, from: response.data ?? Data())
            self.arrayPizza = pizza
            completion(pizza)
        }
    }
}
