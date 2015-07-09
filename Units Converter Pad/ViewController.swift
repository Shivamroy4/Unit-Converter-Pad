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
        
        //Looks for single or multiple taps.
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
        
        
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



// Function for converting the converted Double valu to String for display . DoubletoString

func DoubletoString(UnitOutput: Double) ->String{
   
    
    var UnitDisplay:String = String(format:"%f", UnitOutput)

    return UnitDisplay

}



// Length Page starts here .


    class LengthPage: UIViewController {
    
    @IBOutlet var MeterInput: UITextField!
    
    @IBOutlet var MeterConvertButton: UIButton!

    @IBOutlet var KilometerInput: UITextField!
   
        
        //Function to hide keyboard when tapped on screen . Calls this function when the tap is recognized.
        
        func HideKeyboard(){
            //Causes the view (or one of its embedded text fields) to resign the first responder status.
            view.endEditing(true)
        }
    
        
   
        // Meter Operations
    
    @IBOutlet var MeterButton: UIButton!
    
    
   
        // Shows UITextField when corresponding button is pressed
        
        @IBAction func MeterButton(sender: UIButton) {
        
        MeterInput.hidden = false
        
   
        
        }
    
       // Shows CONVERT Button when data is entered into the UITextField
        
        
        @IBAction func MeterInput(sender: AnyObject) {
            
            if MeterInput.text.isEmpty == false {
                
                MeterConvertButton.hidden = false
            }

        }
   
    // Meter to other Units Conversion
        
        
    @IBAction func MeterConvertButton(sender: AnyObject) {
        
        var MeterValue = StringtoDouble(MeterInput)
        
        
       
        
        var KilometerOutput: Double = MeterValue / 1000
        
        var KilometerDisplay = DoubletoString(KilometerOutput)
        
        KilometerInput.hidden = false
       
        KilometerInput.text = KilometerDisplay
        
        KilometerInput.userInteractionEnabled = false
        
        
        
        HideKeyboard()
        
        }
   
   }




   class WeightPage: UIViewController {
        
      
        @IBOutlet var BackButton: WeightPage!
        
        
        
    }
    

   