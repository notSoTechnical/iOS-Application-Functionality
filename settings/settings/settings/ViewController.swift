//
//  ViewController.swift
//  settings
//
//  Created by user on 10/22/19.
//  Copyright © 2019 Mango. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
        
    @IBOutlet weak var tableView: UITableView!
    
    var name = ["Wi-Fi", "Bluetooth"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
        cell?.lbl.text = name[indexPath.row]
        cell?.img.image = UIImage(named: name[indexPath.row])
        return cell!
            }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailVC()
        detailVC.customInit(contientIndex: indexPath.row, title: name[indexPath.row])
        self.navigationController?.pushViewController(detailVC, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}

