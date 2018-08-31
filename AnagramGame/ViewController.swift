//
//  ViewController.swift
//  AnagramGame
//
//  Created by DetroitLabs on 8/31/18.
//  Copyright © 2018 DetroitLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var userWordField: UITextField!

    func displayWord() {
        let word = "conversations"
        wordLabel.text = word
    }
    
    func getLetters(word: String) -> [Character] {
        let letters = Array(word)
        return letters
    }
    
    func checkUserWord() {
        if let userWord = userWordField.text {
            let userWordLetters = getLetters(word: userWord)
            print(userWordLetters)
        }
        else {
            print("need a word!")
            return
        }
    }
    
    @IBAction func checkButton(_ sender: UIButton) {
        checkUserWord()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        displayWord()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

