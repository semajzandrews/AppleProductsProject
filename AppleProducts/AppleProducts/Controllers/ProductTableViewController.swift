//
//  ProductTableViewController.swift
//  AppleProducts
//
//  Created by MCS on 1/18/20.
//  Copyright © 2020 MCS. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {

    // MARK: - Data Model
    
    var products = ProductLine.getProductLines()[0].products
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Apple Store"
    }
    
    // MARK: - UITableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        products.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
            
        let product = products[indexPath.row]
        
        cell.textLabel?.text = product.title
        
        return cell
    
    }
}
