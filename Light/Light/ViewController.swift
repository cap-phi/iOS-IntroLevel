//
//  ViewController.swift
//  Light
//
//  Created by Tian Wu on 15/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn: Bool = true

//    @IBOutlet weak var switchButton: UIButton!
    
    
    @IBAction func switchButtonPressed(_ sender: Any) {
        lightOn = (lightOn) ? false : true
//        switchButton.setTitle( lightOn ? "Off" : "On", for: .normal)
        view.backgroundColor = lightOn ? .white : .black
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

