//
//  SecondViewController.swift
//  RequestTest4
//
//  Created by Gilmar Amaro on 23/03/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel1: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel3: UILabel!
    
    var connectionScreen2: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreenTwo()
    }
    
    func setupScreenTwo() {
        let urlImage = URL(string: connectionScreen2?.imageURL ?? "")
        myImage.sd_setImage(with: urlImage)
        myLabel1.text = "Preco da Pizza Pequena: \(connectionScreen2?.priceP ?? 0.0)"
        myLabel2.text = "Preco da Pizza Media: \(connectionScreen2?.priceM ?? 0.0)"
        myLabel3.text = "Preco da Pizza Grande: \(connectionScreen2?.priceG ?? 0.0)"
    }
    
    @IBAction func myButton(_ sender: Any) {
        if let myScreenTwo = self.storyboard?.instantiateViewController(withIdentifier: "screenThree") as? ThirdViewController {
            myScreenTwo.connectionScreen3 = self.connectionScreen2
            self.navigationController?.pushViewController(myScreenTwo, animated: true)
        }
    }
}
