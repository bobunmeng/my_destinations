//
//  MyDreamViewController.swift
//  MyDestinations
//
//  Created by Bo Bunmeng on 17/7/20.
//  Copyright © 2020 Bo Bunmeng. All rights reserved.
//

import UIKit

class MyDreamViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    private let viewModel = DreamDestinationViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupTableView()
    }
    
    private func setupTableView() {
        tableView.register(UINib(nibName: "MyDreamDetailCell", bundle: nil), forCellReuseIdentifier: "MyDreamDetailCell")
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.separatorStyle = .none
        tableView.rowHeight = UITableView.automaticDimension
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension MyDreamViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.destinations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyDreamDetailCell") as? MyDreamDetailCell else {
            return UITableViewCell()
        }
        cell.configure(with: viewModel.destinations[indexPath.row])
        return cell
    }
}
