//
//  ViewController.swift
//  GuessF1Circuit
//
//  Created by Barkın Süngü on 6.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    
    var circuites = [String]()
    var score = 0
    var correctAnswer = 0
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circuites += ["ALBERT PARK CIRCUIT","BAHRAIN INTERNATIONAL CIRCUIT","CIRCUIT DE BARCELONA-CATALUNYA","JEDDAH CORNICHE CIRCUIT","AUTODROMO ENZO E DINO FERRARI","MIAMI INTERNATIONAL AUTODROME","CIRCUIT DE MONACO","BAKU CITY CIRCUIT","CIRCUIT GILLES-VILLENEUVE","SILVERSTONE CIRCUIT","RED BULL RING","CIRCUIT PAUL RICARD","HUNGARORING","CIRCUIT DE SPA-FRANCORCHAMPS","CIRCUIT ZANDVOORT","AUTODROMO NAZIONALE MONZA","MARINA BAY STREET CIRCUIT","SUZUKA INTERNATIONAL RACING COURSE","CIRCUIT OF THE AMERICAS","AUTÓDROMO HERMANOS RODRÍGUEZ","AUTÓDROMO JOSÉ CARLOS PACE","YAS MARINA CIRCUIT","INTERCITY ISTANBUL PARK"]
        
        button1.layer.borderWidth = 2
        button2.layer.borderWidth = 2
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion(action: nil)
    }
    
    func askQuestion(action: UIAlertAction! = nil){
        circuites.shuffle()
        correctAnswer = Int.random(in: 0...1)
        
        button1.setImage(UIImage(named: circuites[0]), for: .normal)
        button2.setImage(UIImage(named: circuites[1]), for: .normal)
        
        title = circuites[correctAnswer]
        navigationItem.prompt = "Score: " + String(score)
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.tag == correctAnswer{
            score += 1
        }else{
            score -= 1
        }
        
        askQuestion()
    }
    
}

