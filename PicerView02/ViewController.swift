//
//  ViewController.swift
//  PicerView02
//
//  Created by Sang won Seo on 2018. 4. 18..
//  Copyright © 2018년 Sang won Seo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var yourLabel: UILabel!
    
    var color = ["white", "Green", "Red"]
    var feeling = ["1", "2", "3", "4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myPickerView.delegate = self
        myPickerView.dataSource = self
        //delegate와 viewController 연결
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 3
        } else {
            return 4
        }
    }
    //필수 프로토콜
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            return color[row]
        } else {
            return feeling[row]
        }
    }
    
    //UIPickerViewDelegate method
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
        myLabel.text = color[row]
        } else {
        yourLabel.text = feeling[row]
        }
    }

}

