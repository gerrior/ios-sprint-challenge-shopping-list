//
//  ShoppingItemCollectionViewCell.swift
//  Shopping List
//
//  Created by Mark Gerrior on 2/28/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class ShoppingItemCollectionViewCell: UICollectionViewCell {

    var shoppingItem: ShoppingItem? {
        didSet {
            updateViews()
        }
    }

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var onShoppingList: UILabel!
    
   // TODO: Why can't I create an action from the cell?

    func updateViews() {
        guard let name = shoppingItem?.itemName,
            let pic = shoppingItem?.imageName else { return }

        let picImage = UIImage(named: pic)
        imageView.image = picImage
        itemNameLabel.text = name
        
        if shoppingItem?.onShoppingList == true {
            onShoppingList.text = "Added"
        } else {
            onShoppingList.text = "Not Added"
        }
    }
}

