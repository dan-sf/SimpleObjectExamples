//
//  ViewController.swift
//  SimpleObjectExamples
//
//  Created by Dan Fowler on 6/10/15.
//  Copyright (c) 2015 Dan Fowler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Button
    @IBOutlet weak var buttonObject: UIButton!
    @IBOutlet weak var buttonLabel: UILabel!
    var buttonCounter = 1
    
    // Slider
    @IBOutlet weak var sliderObject: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    
    // Switch
    @IBOutlet weak var switchObject: UISwitch!
    @IBOutlet weak var switchLabel: UILabel!
    
    // Segmented control
    @IBOutlet weak var segmentObject: UISegmentedControl!
    @IBOutlet weak var segmentLabel: UILabel!
    
    // Stepper
    @IBOutlet weak var stepperObject: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set up labels
        buttonLabel.text = "Pressed 0 times."
        sliderLabel.text = "Value: \(sliderObject.value)"
        switchLabel.text = "On"
        segmentLabel.text = "First"
        stepperLabel.text = "Value: \(Int(stepperObject.value))"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Create action functions for all objects
    
    @IBAction func buttonAction() {
        buttonLabel.text = "Pressed \(buttonCounter) times."
        buttonCounter += 1
    }
    @IBAction func sliderAction() {
        sliderLabel.text = "Value: \(sliderObject.value)"
    }
    @IBAction func switchAction() {
        if switchObject.on == true {
            switchLabel.text = "On"
        } else {
            switchLabel.text = "Off"
        }
    }
    @IBAction func segmentAction() {
        if segmentObject.selectedSegmentIndex == 0 {
            segmentLabel.text = "First"
        }
        if segmentObject.selectedSegmentIndex == 1 {
            segmentLabel.text = "Second"
        }
    }
    @IBAction func stepperAction() {
        var stepperValue = Int(stepperObject.value)
        stepperLabel.text = "Value: \(stepperValue)"
    }
}

