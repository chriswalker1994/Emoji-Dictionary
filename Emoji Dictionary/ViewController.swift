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
    
    var Emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Emojitableview.dataSource = self
        Emojitableview.delegate = self
        Emojis = MakeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Emojis.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = Emojis[indexPath.row]
        cell.textLabel?.text = emoji.StringEmoji
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = Emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func MakeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.StringEmoji = "😃"
        emoji1.BirthYear = 2010
        emoji1.category = "Smiley"
        emoji1.defenition = "A very smiley face"
        
        let emoji2 = Emoji()
        emoji2.StringEmoji = "😇"
        emoji2.BirthYear = 2007
        emoji2.category = "Smiley"
        emoji2.defenition = "A Halo smiley"
        
        let emoji3 = Emoji()
        emoji3.StringEmoji = "🤡"
        emoji3.BirthYear = 1999
        emoji3.category = "Smiley"
        emoji3.defenition = "Killer Clown!"
        
        let emoji4 = Emoji()
        emoji4.StringEmoji = "💋"
        emoji4.BirthYear = 2001
        emoji4.category = "Body Parts"
        emoji4.defenition = "A Kiss"
    
        let emoji5 = Emoji()
        emoji5.StringEmoji = "😎"
        emoji5.BirthYear = 2013
        emoji5.category = "Smiley"
        emoji5.defenition = "A smiley with sunglasses"
        
        let emoji6 = Emoji()
        emoji6.StringEmoji = "💩"
        emoji6.BirthYear = 0000
        emoji6.category = "Smiley"
        emoji6.defenition = "POO!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }
    
    
}

