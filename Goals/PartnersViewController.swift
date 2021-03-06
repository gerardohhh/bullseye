//
//  PartnersViewController.swift
//  Goals
//
//  Created by Gerardo Parra on 8/8/17.
//  Copyright © 2017 Isabella Teng. All rights reserved.
//

import UIKit

class PartnersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var partners: [[String: Any]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 180
        
        partners = [ [ "username": "auggie", "icon": #imageLiteral(resourceName: "auggie"), "goalTitle": "Save money for a new laptop", "streak": 0, "alerts": 0, "trend": "negative", "chartData": [5, 4, 5, 3, 2, 0, 0] ],
                    [ "username": "alina", "icon": #imageLiteral(resourceName: "alina"), "goalTitle": "Meet Zuck", "streak": 1, "alerts": 2, "trend": "neutral", "chartData": [2, 3, 5, 4, 3, 6, 5] ],
                    [ "username": "zuck", "icon": #imageLiteral(resourceName: "zuck"), "goalTitle": "Connect the world", "streak": 6, "alerts": 1, "trend": "positive", "chartData": [9, 10, 8, 6, 3, 9, 17] ],
                    [ "username": "mei", "icon": #imageLiteral(resourceName: "mei"), "goalTitle": "Get a return offer", "streak": 10, "alerts": 4, "trend": "positive", "chartData": [2, 1, 3, 3, 5, 4, 7] ] ]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partners.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PartnerCell") as! PartnerCell
        
        cell.partnerInfo = partners[indexPath.row]
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
