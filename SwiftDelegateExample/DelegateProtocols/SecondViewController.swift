//
//  SecondViewController.swift
//  DelegateProtocols
//
//  Created by Manoj Amsavel on 12/9/23.
//

import UIKit

class SecondViewController: UIViewController {
    var delegate: AddItem?
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBAction func addItem(_ sender: Any) {
        delegate?.addItem(item: textField.text!)
        self.dismiss(animated: true)
    }
}
