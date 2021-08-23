//
//  ViewController.swift
//  ColorizedApp
//
//  Created by user202124 on 23.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    @IBOutlet var firstSliderValue: UILabel!
    @IBOutlet var secondSliderValue: UILabel!
    @IBOutlet var thirdSliderValue: UILabel!
    
    
    
    @IBOutlet var firstSlider: UISlider!
    @IBOutlet var secondSlider: UISlider!
    @IBOutlet var thirdSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstSliderValue.text = String(firstSlider.value)
        mainView.layer.cornerRadius = 10
        
    }
    
    func changeColor() {
        mainView.backgroundColor = UIColor(red: CGFloat(firstSlider.value), green: CGFloat(secondSlider.value), blue: CGFloat(thirdSlider.value), alpha: 1)
    }
    
    @IBAction func firstSliderAction() {
        firstSliderValue.text = String(firstSlider.value)
        changeColor()
    }
    
    @IBAction func secondSliderAction() {
        secondSliderValue.text = String(secondSlider.value)
        changeColor()
    }
    
    @IBAction func thirdSliderAction() {
        thirdSliderValue.text = String(thirdSlider.value)
        changeColor()
    }
}

