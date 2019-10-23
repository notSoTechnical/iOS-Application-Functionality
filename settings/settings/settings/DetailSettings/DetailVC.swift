//
//  DetailVC.swift
//  settings
//
//  Created by user on 10/23/19.
//  Copyright © 2019 Mango. All rights reserved.
//

import UIKit

class DetailVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let countryData = [
        ["wifi 1", "wifi 2", "wifi 3"],
        ["BLE 1", "BLE 2", "BLE 3"]
    ]
    var contientIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        let nib = UINib(nibName: "DetailTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DetailTableViewCell")

        // Do any additional setup after loading the view.
    }
    
    func customInit(contientIndex: Int, title: String) {
        self.contientIndex = contientIndex
        self.title = title
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryData[contientIndex].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableViewCell", for: indexPath) as!DetailTableViewCell
        cell.textLabel?.text = countryData[contientIndex][indexPath.row]
        return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
