//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Christopher Walker on 14/09/2017.
//  Copyright © 2017 Christopher Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var Emojitableview: UITableView!
    
    var Emojis = ["😃","😇","🤡","💋","😎","👿","👹","💀","👻","💩"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Emojitableview.dataSource = self
        Emojitableview.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Emojis.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = Emojis[indexPath.row]
        return cell
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

