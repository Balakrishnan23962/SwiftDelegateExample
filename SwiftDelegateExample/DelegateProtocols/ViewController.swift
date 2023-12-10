//
//  ViewController.swift
//  DelegateProtocols
//
//  Created by Manoj Amsavel on 12/9/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var items: [String] = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = 0
        if section == 0 {
            count = items.count
        } else if section == 1 {
            count = items.count
        } else if section == 2 {
            count = items.count
        }
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.item.text = items[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let uiView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: tableView.bounds.height))
        let lable = UILabel(frame: CGRect(x: 0, y: 0, width: tableView.bounds.width, height: tableView.bounds.height))
        if section == 0 {
            lable.text = "AddItem"
        } else if section == 1 {
            lable.text = "AddItem"
        } else if section == 2 {
            lable.text = "AddItem"
        }
        uiView.addSubview(lable)
        return uiView
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        var string = ""
//        if section == 0 {
//            string = "Hello"
//        } else if section == 1 {
//            string = "Hello2"
//        } else if section == 2 {
//            string = "Hello3"
//        }
//        return string
//    }
    
    @IBAction func addItem(_ sender: Any) {
        let secondVC = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        secondVC.delegate = self
        present(secondVC, animated: true)
    }
    
}
extension ViewController: AddItem {
    func addItem(item: String) {
        DispatchQueue.main.async { [weak self] in
            self?.items.append(item)
            self?.tableView.reloadData()
        }
    }
}
protocol AddItem {
    func addItem(item: String)
}
