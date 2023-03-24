//
//  MyTableViewCell.swift
//  RequestTest4
//
//  Created by Gilmar Amaro on 23/03/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var pizzaImage: UIImageView!
    @IBOutlet weak var pizzaName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupPizza(myPizza: PizzaElement?) {
        let urlImage = URL(string: myPizza?.imageURL ?? "")
        pizzaImage.sd_setImage(with: urlImage)
        pizzaName.text = myPizza?.name
    }
}
