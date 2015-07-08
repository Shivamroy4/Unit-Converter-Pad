//
//  ViewController.swift
//  Units Converter Pad
//
//  Created by Shivam Roy on 05/07/15.
//  Copyright (c) 2015 Shivam Roy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var LengthButton: UIButton!
   
    
    @IBOutlet var WeightButton: UIButton!
    
    
}


// Function for converting the string in Text Field to Double Value for Calculations . StringtoDouble

func StringtoDouble(UnitInput: UITextField) -> Double {
    
    var UnitValue = (UnitInput.text as NSString).doubleValue
    return UnitValue
    
}



// Length Page starts here .


    class LengthPage: UIViewController {

    @IBOutlet var LengthLabel: UILabel!
    
    @IBOutlet var MeterInput: UITextField!
    
    @IBOutlet var MeterConvertButton: UIButton!

    
    @IBOutlet var KilometerLabel: UILabel!
   
    
   
    
    
    
    
    // Meter Operations
    
    @IBOutlet var MeterButton: UIButton!
    
    
    @IBAction func MeterButton(sender: UIButton) {
        
        MeterInput.hidden = false
    }
    
    
   
    
    @IBAction func MeterConvertButton(sender: AnyObject) {
        
        var MeterValue = StringtoDouble(MeterInput)
        
        
        var KilometerOutput: Double = MeterValue / 1000
        
        
        
        var KilometerDisplay:String = String(format:"%f", KilometerOutput)
        
       
        KilometerLabel.text = KilometerDisplay + " Kilometers"
       
        
        
        }
   
   
    
    
    
    
    
}




   class WeightPage: UIViewController {
        
      
        @IBOutlet var BackButton: WeightPage!
        
        
        
    }
    

   