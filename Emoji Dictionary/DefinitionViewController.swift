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
    @IBOutlet weak var Birthlabel: UILabel!
    @IBOutlet weak var Categorylabel: UILabel!
    
    var emoji = "No Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        EmojiLabel.text = emoji
        
        if emoji == "😃" {
            definitionlabel.text = "A happy face!"
            Categorylabel.text = "Category: Smiley"
            Birthlabel.text = "Birthyear: 2001"
            
        }
        if emoji == "😇" {
            definitionlabel.text = "You have a Halo!"
            Categorylabel.text = "Category: Smiley"
            Birthlabel.text = "Birthyear: 2005"
            
        }
        
        if emoji == "🤡" {
            definitionlabel.text = "Killer Clown!!!!"
            Categorylabel.text = "Category: Smiley"
            Birthlabel.text = "Birthyear: 2010"
        }
        
        if emoji == "💋" {
            definitionlabel.text = "Kiss!"
            Categorylabel.text = "Category: Body Parts"
            Birthlabel.text = "Birthyear: 2009"
            
        }
        
        if emoji == "😎" {
            definitionlabel.text = "Coolness!"
            Categorylabel.text = "Category: Smiley"
            Birthlabel.text = "Birthyear: 2004"
            
        }
        
        if emoji == "💩" {
            definitionlabel.text = "SHIT!"
            Categorylabel.text = "Category: Smiley"
            Birthlabel.text = "Birthyear: 1999"
        }
        
        
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
