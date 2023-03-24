//
//  ViewController.swift
//  RequestTest4
//
//  Created by Gilmar Amaro on 20/03/23.
//

import UIKit
import Alamofire
import SDWebImage

class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    var arrayPizza: [PizzaElement]?
    var request = Request()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
        setupRequest()
    }
    
    func setupTableView() {
        self.myTableView.dataSource = self
        let UINIB = UINib(nibName: "MyTableViewCell", bundle: nil)
        myTableView.register(UINIB, forCellReuseIdentifier: "Cell")
    }
    
    func setupRequest() {
        request.requestPizza { myPizzaRequest in
            self.arrayPizza = myPizzaRequest
            self.myTableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrayPizza?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyTableViewCell {
            cell.setupPizza(myPizza: arrayPizza?[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate {
    
}

