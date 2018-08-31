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
    
    let word = "conversations"

    func displayWord() {
        wordLabel.text = word
    }
    
    func getLetters(word: String) -> [Character] {
        let letters = Array(word)
        return letters
    }
    
//    func getUserWordLetters() {
//        if let ViewController.userWord = userWordField.text {
//            let userWordLetters = getLetters(word: userWord)
//            print(userWordLetters)
//        }
//        else {
//            print("need a word!")
//            return
//        }
//    }
    
    func haveUserWord() -> Bool {
        guard (userWordField.text != nil) else {
            print("need a word")
            return false
        }
        return true
    }
    
//    func checkUserWord() {
//        let ourLetters = getLetters(word: word)
//        //let userLetters = getLetters(word: userWordField)
//        print("our letters: \(ourLetters)")
//        print("their letters: \(userLetters)")
//    }
    
    @IBAction func checkButton(_ sender: UIButton) {
        //checkUserWord()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        displayWord()
        print(haveUserWord())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

