//
//  ViewController.swift
//  lifecounter
//
//  Created by stlp on 4/19/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var score1Label: UILabel!
    @IBOutlet weak var minusBtn1: UIButton!
    @IBOutlet weak var plusBtn1: UIButton!
    @IBOutlet weak var player1: UILabel!
    
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var minuBtn2: UIButton!
    @IBOutlet weak var plusBtn2: UIButton!
    @IBOutlet weak var plus5Btn2: UIButton!
    @IBOutlet weak var minus5Btn2: UIButton!
    @IBOutlet weak var score2Label: UILabel!
    
    var score1 = 20
    var score2 = 20

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateScore()
    }
    
    func updateScore() {
        print("ScoreUpdated")
        lostAlert()
        score1Label.text = "\(score1)"
        score2Label.text = "\(score2)"
    }
    
    @IBAction func plusBtn1(_ sender: Any) {
        score1 += 1
        updateScore()
    }

    @IBAction func minusBtn1(_ sender: Any) {
        score1 -= 1
        updateScore()
    }
    @IBAction func plus5Btn1(_ sender: Any) {
        score1 += 5
        updateScore()
    }
    @IBAction func minus5Btn1(_ sender: Any) {
        score1 -= 5
        updateScore()
    }
    
    @IBAction func minuBtn2(_ sender: Any) {
        score2 -= 1
        updateScore()
    }
    
    @IBAction func plusBtn2(_ sender: Any) {
        score2 += 1
        updateScore()
    }
    @IBAction func plus5Btn2(_ sender: Any) {
        score2 += 5
        updateScore()
    }
    @IBAction func minus5Btn2(_ sender: Any) {
        score2 -= 5
        updateScore()
    }
    
    func lostAlert() {
        let alert = UIAlertController(title: "Game Over", message: "Player 1 LOSES!", preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "OK",
                                         style: .default,
                                         handler: { _ in NSLog("\"OK\" pressed.")
           }))
        if score1 <= 0 {
               self.present(alert, animated: true, completion: {
                   NSLog("The completion handler fired")
               })
        } else if score2 <= 0 {
            alert.message = "Player 2 LOSES!"
            self.present(alert, animated: true, completion: {
                NSLog("The completion handler fired")
            })
        }
    }
}

