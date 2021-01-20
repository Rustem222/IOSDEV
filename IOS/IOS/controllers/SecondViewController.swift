//
//  SecondViewController.swift
//  IOS
//
//  Created by Rustem on 1/20/21.
//

import UIKit

protocol SomeProtocol {
    func someFunc()
    func anotherFunc(_ arr: [String]) -> Int
}

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arr = ["One", "Two", "Three", "SomeText"]
    let cellid = "TableViewCell"
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "mainPage"
        self.configureTableView()
    }
    
    
    func configureTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: cellid, bundle: nil), forCellReuseIdentifier: cellid)
        tableView.tableFooterView = UIView()
    }
    

}
extension SecondViewController: SomeProtocol{
    func someFunc() {
        print(arr)
    }
    
    func anotherFunc(_ arr: [String]) -> Int {
        return 0
    }
    
    
}

extension SecondViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath) as! TableViewCell
        cell.titleLabel.text = arr[indexPath.row]
        return cell
        
    }
    
    
}
