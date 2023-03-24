//
//  ThirdViewController.swift
//  RequestTest4
//
//  Created by Gilmar Amaro on 23/03/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    var connectionScreen3: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreenThree()
    }
    
    func setupScreenThree() {
        let urlImage = URL(string: connectionScreen3?.imageURL ?? "")
        myImage.sd_setImage(with: urlImage)
        myLabel.text = "Nota Das Pizzas: \(connectionScreen3?.rating ?? 0)"
    }
}
