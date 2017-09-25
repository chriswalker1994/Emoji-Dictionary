//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Christopher Walker on 14/09/2017.
//  Copyright © 2017 Christopher Walker. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var definitionlabel: UILabel!
    
    @IBOutlet weak var emojilabel: UILabel!
    @IBOutlet weak var Birthlabel: UILabel!
    @IBOutlet weak var Categorylabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        emojilabel.text = emoji.StringEmoji
        Birthlabel.text = "BirthYear: \(emoji.BirthYear)"
        Categorylabel.text = "Category: \(emoji.category)"
        definitionlabel.text = emoji.defenition
       
        
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
