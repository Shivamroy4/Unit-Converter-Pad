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
        
        
        
        // Meter to Kilometer
        
       var KilometerOutput: Double = MeterValue * 0.001
        
        var KilometerDisplay: String = DoubletoString(KilometerOutput)
        
        DisplayUnit(Kilometer,UnitDisplay: KilometerDisplay)
        
       // Meter to Inch
        
        var InchOutput: Double = MeterValue * 39.37007874
        
        var InchDisplay: String = DoubletoString(InchOutput)
        
        DisplayUnit(Inch,UnitDisplay: InchDisplay)
        
        // Meter to Foot
        
        var FootOutput: Double = MeterValue * 3.2808399
        
        var FootDisplay: String = DoubletoString(FootOutput)
        
        DisplayUnit(Foot,UnitDisplay: FootDisplay)
        
        
        // Meter to Mile
        
        var MileOutput: Double = MeterValue * 0.00062137
        
        var MileDisplay: String = DoubletoString(MileOutput)
        
        DisplayUnit(Mile,UnitDisplay: MileDisplay)
        

        // Meter to Angtrom
        
        var AngstromOutput: Double = MeterValue * 10000000000
        
        var AngstromDisplay: String = DoubletoString(AngstromOutput)
        
        DisplayUnit(Angstrom,UnitDisplay: AngstromDisplay)
        
        // Meter to Centimeter
        
        var CentimeterOutput: Double = MeterValue * 100
        
        var CentimeterDisplay: String = DoubletoString(CentimeterOutput)
        
        DisplayUnit(Centimeter,UnitDisplay: CentimeterDisplay)
        
        
        // Meter to Yard
        
        var YardOutput: Double = MeterValue * 1.0936133
        
        var YardDisplay: String = DoubletoString(YardOutput)
        
        DisplayUnit(Yard,UnitDisplay: YardDisplay)

        
        // Meter to Furlong
        
        var FurlongOutput: Double = MeterValue * 0.00497097
        
        var FurlongDisplay: String = DoubletoString(FurlongOutput)
        
        DisplayUnit(Furlong,UnitDisplay: FurlongDisplay)
        
        
        // Meter to Hand
        
        var HandOutput: Double = MeterValue * 9.84251969
        
        var HandDisplay: String = DoubletoString(HandOutput)
        
        DisplayUnit(Hand,UnitDisplay: HandDisplay)

        
        // Meter to Fathom
        
        var FathomOutput: Double = MeterValue * 0.54680665
        
        var FathomDisplay: String = DoubletoString(FathomOutput)
        
        DisplayUnit(Fathom,UnitDisplay: FathomDisplay)
        

        // Meter to Decimeter
        
        var DecimeterOutput: Double = MeterValue * 10
        
        var DecimeterDisplay: String = DoubletoString(DecimeterOutput)
        
        DisplayUnit(Decimeter,UnitDisplay: DecimeterDisplay)
        

        
        HideKeyboard()
        }
   
   }




   class WeightPage: UIViewController {
        
      
        @IBOutlet var BackButton: WeightPage!
        
        
        
    }
    

   