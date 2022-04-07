//
//  ViewController.swift
//  Simple!PP
//
//  Created by AntonChen on 2022/4/7.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var background: UIView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var funFacts: UILabel!
    let texts = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.", "Contrary to popular belief, Lorem Ipsum is not simply random text.", "Richard McClintock, a Latin professor at Hampden-Sydney College in ", "looked up one of the more obscure Latin words, consectetur",
    "from a Lorem Ipsum passage, and going through the cities of the word", "This book is a treatise on the theory of ethics, very popular during the.", "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]
    
    
    let colorArrey = [#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), #colorLiteral(red: 0.4352941176, green: 0.5607843137, blue: 0.9176470588, alpha: 1), #colorLiteral(red: 0, green: 0.8588, blue: 0.1412, alpha: 1), #colorLiteral(red: 0.9294, green: 0.6627, blue: 0, alpha: 1), #colorLiteral(red: 0.651, green: 0, blue: 0.9294, alpha: 1), #colorLiteral(red: 0, green: 0.6275, blue: 0.6275, alpha: 1), #colorLiteral(red: 0.1882, green: 0.0275, blue: 0, alpha: 1) ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func clickButton(_ sender: UIButton) {
        funFacts.text = texts.randomElement()
        background.backgroundColor = colorArrey.randomElement()
    }
}
    



