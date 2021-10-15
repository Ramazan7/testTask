//
//  listViewController.swift
//  testTask
//
//  Created by Ramazan on 15.10.2021.
//

import UIKit

class listViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let tableViewController = UITableViewController(style: .plain)
    var refresh = UIRefreshControl()
    var myTableView = UITableView()
    var imageq = UIImageView(image: UIImage(named: ""))
    let indetifire = "MyCell"
    var structJsonn = [structJson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myTableView)
        
        createTable()
        downloadJSON{
            self.myTableView.reloadData()
        }
        
        self.refresh.addTarget(self, action: #selector(refreshTable), for: .valueChanged)
        self.myTableView.addSubview(refresh)
        
    }
    
    
    @objc func refreshTable() {
        self.myTableView.reloadData()
        refresh.endRefreshing()
    }
    
    
    func downloadJSON(completed: @escaping () -> ()) {
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        
        URLSession.shared.dataTask(with: url!) {(data, response,error) in
            if error == nil {
                do {
                    self.structJsonn = try JSONDecoder().decode([structJson].self, from: data!)
                    DispatchQueue.main.async {
                        completed()
                    }
                }catch {
                    print("json Error")
                }
            }
        }.resume()
    }
    
    func createTable() {
        self.myTableView = UITableView(frame: view.bounds, style: .plain)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: indetifire)
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        myTableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        view.addSubview(myTableView)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return structJsonn.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: indetifire, for: indexPath)
        
        cell.textLabel?.text = structJsonn[indexPath.row].title.capitalized
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dataview = dataViewController()
        
        dataview.structData = structJsonn[(self.myTableView.indexPathForSelectedRow?.row)!]
        self.present(dataview, animated: true)
        
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    
}
