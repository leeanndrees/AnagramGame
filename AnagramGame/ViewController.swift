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
    
    func haveUserWord() -> Bool {
        guard (userWordField.text != "") else {
            return false
        }
        return true
    }
    
    func checkUserWord() -> Bool {
        let ourLetters = getLetters(word: word)
        let userLetters = getLetters(word: userWordField.text!)
        var isAnagram = false
        for letter in userLetters {
            if ourLetters.contains(letter) {
                isAnagram = true
            }
            else {
                break
            }
        }
        return isAnagram
    }
    
    func playGame() {
        displayWord()
    }
    
    @IBAction func checkButton(_ sender: UIButton) {
        if haveUserWord() {
            print(checkUserWord())
        }
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

