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
    
    @IBOutlet weak var EmojiLabel: UILabel!
    
    var emoji = "No Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        EmojiLabel.text = emoji
        
        if emoji == "😃" {
            definitionlabel.text = "A happy face!"
            
        }
        if emoji == "😇" {
            definitionlabel.text = "You have a Halo!"
            
        }
        
        if emoji == "🤡" {
            definitionlabel.text = "Killer Clown!!!!"
            
        }
        
        if emoji == "💋" {
            definitionlabel.text = "Kiss!"
            
        }
        
        if emoji == "😎" {
            definitionlabel.text = "Coolness!"
            
        }
        
        if emoji == "💩" {
            definitionlabel.text = "SHIT!"
            
        }
        
        
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
