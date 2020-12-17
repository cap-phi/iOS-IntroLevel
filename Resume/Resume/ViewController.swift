//
//  ViewController.swift
//  Resume
//
//  Created by Tian Wu on 16/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelToShowText: UILabel!
    @IBOutlet weak var buttonToSetText: UIButton!
    
    @IBOutlet weak var buttonToClearText: UIButton!
    
    @IBOutlet weak var textInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonToSetText.setTitle("Set Text", for: .normal)
        buttonToClearText.setTitle("Clear Text", for: .normal)
        labelToShowText.text = "Tap below to show";
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func setText(_ sender: UIButton) {
        if let input = textInput.text {
            if input == "" {
                labelToShowText.text = "what?"
            } else {
                labelToShowText.text = input
            }
        }
    }
    
    @IBAction func clearText(_ sender: Any) {
        if let input = textInput.text {
            if input == "" {
                labelToShowText.text = "All clear!"
            } else {
                textInput.text = ""
                labelToShowText.text = "Cleared! Tap below"
            }
        }
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
        
    }
    
    
}

