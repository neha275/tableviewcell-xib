//
//  ViewController.swift
//  tableViewcellWithxib
//
//  Created by Neha Gupta on 13/02/18.
//  Copyright © 2018 Neha Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nid = UINib(nibName: "commonCell", bundle: nil)
        tableView.register(nid, forCellReuseIdentifier: "commonCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "commonCell", for: indexPath) as! commonCell
        cell.uvBackground.layer.masksToBounds = true
        cell.uvBackground.layer.cornerRadius = 4
        
        cell.label.text = "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"
        cell.imageLogo.image = #imageLiteral(resourceName: "Artboard")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.estimatedRowHeight = 80
        return UITableViewAutomaticDimension    
    }
}

