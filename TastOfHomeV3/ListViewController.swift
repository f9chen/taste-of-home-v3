//
//  ListViewController.swift
//  TastOfHomeV3
//
//  Created by Fan Chen on 6/9/18.
//  Copyright © 2018 Fan Chen. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    title = "My menu"
    tableView.register(ItemCard.self, forCellReuseIdentifier: "ItemCard")
  }
  
  let urls = [
    URL(string: "https://fansoffan.files.wordpress.com/2018/06/6174618336_img_2594.jpg?w=1000&h=&crop=1"),
    URL(string: "https://fansoffan.files.wordpress.com/2018/06/img_0852.jpg?w=1000&h=&crop=1")
  ]
  
}

// MARK: - UITableViewDelegate

extension ListViewController {
  
  override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return ItemCard.cardHeight
  }
  
}

// MARK: - UITableViewDataSource

extension ListViewController {
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return ItemCard(imageURL: urls[indexPath.row])
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 2
  }
  
}

