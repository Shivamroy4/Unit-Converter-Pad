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
   
    
    var UnitDisplay:String = String(format:"%.03f", UnitOutput)

    return UnitDisplay

}



// Length Page starts here .


    class LengthPage: UIViewController {
    
    
        // Length Labels
        
        @IBOutlet var Meter: UITextField!
    
        @IBOutlet var Kilometer: UITextField!
        
        @IBOutlet var Inch: UITextField!
        
        @IBOutlet var Foot: UITextField!
        
        @IBOutlet var Mile: UITextField!
        
        @IBOutlet var Angstrom: UITextField!
       
        @IBOutlet var Centimeter: UITextField!
        
        @IBOutlet var Yard: UITextField!
        
        @IBOutlet var Furlong: UITextField!
        
        @IBOutlet var Hand: UITextField!
        
        @IBOutlet var Fathom: UITextField!
        
        @IBOutlet var Decimeter: UITextField!
        
        
        // Length Buttons
        
        @IBOutlet var MeterButton: UIButton!
        
        @IBOutlet var KilometerButton: UIButton!
        
        @IBOutlet var InchButton: UIButton!
        
        @IBOutlet var FootButton: UIButton!
        
        @IBOutlet var MileButton: UIButton!
        
        @IBOutlet var AngstromButton: UIButton!
        
        @IBOutlet var CentimeterButton: UIButton!
        
        @IBOutlet var YardButton: UIButton!
        
        @IBOutlet var FurlongButton: UIButton!
        
        @IBOutlet var HandButton: UIButton!
        
        @IBOutlet var FathomButton: UIButton!
        
        @IBOutlet var DecimeterButton: UIButton!
        
        
        // Length Convert Buttons
   
        @IBOutlet var MeterConvertButton: UIButton!

        @IBOutlet var KilometerConvertButton: UIButton!
    
        @IBOutlet var InchConvertButton: UIButton!
   
        @IBOutlet var FootConvertButton: UIButton!
        
        @IBOutlet var MileConvertButton: UIButton!
        
        @IBOutlet var AngstromConvertButton: UIButton!
        
        @IBOutlet var CentimeterConvertButton: UIButton!
        
        @IBOutlet var YardConvertButton: UIButton!
        
        @IBOutlet var FurlongConvertButton: UIButton!
        
        @IBOutlet var HandConvertButton: UIButton!
        
        @IBOutlet var FathomConvertButton: UIButton!
        
        @IBOutlet var DecimeterConvertButton: UIButton!
        
        
        
        
        
        
        
        
        
        //Function to hide keyboard when tapped on screen . Calls this function when the tap is recognized.
        
        func HideKeyboard(){
            //Causes the view (or one of its embedded text fields) to resign the first responder status.
            view.endEditing(true)
        }
        
        
        //Function to display the UITextField and display results
        
        
        func DisplayUnit(Unit: UITextField,UnitDisplay: String){
            
            Unit.hidden = false
            
            Unit.text = UnitDisplay
            
            Unit.userInteractionEnabled = false
        
        }
        
        
    
        
   
        // Meter Operations
    
    
    
    
   
        // Shows UITextField when corresponding button is pressed
        
        @IBAction func MeterButton(sender: UIButton) {
        
        Meter.hidden = false
        
   
        
        }
    
       // Shows CONVERT Button when data is entered into the UITextField
        
        
        @IBAction func MeterInput(sender: AnyObject) {
            
            if Meter.text.isEmpty == false {
                
                MeterConvertButton.hidden = false
            }

        }
   
    // Meter to other Units Conversion
        
        
    @IBAction func MeterConvertButton(sender: AnyObject) {
        
        var MeterValue = StringtoDouble(Meter)
        
        
       var KilometerOutput: Double = MeterValue / 1000
        
        var KilometerDisplay: String = DoubletoString(KilometerOutput)
        
        DisplayUnit(Kilometer,UnitDisplay: KilometerDisplay)
        
        
        
        
        
        HideKeyboard()
        }
   
   }




   class WeightPage: UIViewController {
        
      
        @IBOutlet var BackButton: WeightPage!
        
        
        
    }
    

   