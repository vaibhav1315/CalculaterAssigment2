//
//  ViewController.swift
//  CalculaterNewAssigment2
//
//  Created by Mac on 29/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var CalculaterWorking: UILabel!
    
    @IBOutlet weak var CalculaterResult: UILabel!
    
    var workings : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearall()
        // Do any additional setup after loading the view.
    }
    func clearall()  {
        workings = ""
        CalculaterWorking.text = ""
        CalculaterResult.text = ""
        
    }
    
    @IBAction func AllTapClear(_ sender: Any) { clearall()
    }
    
    
    @IBAction func PercentageTap(_ sender: Any)
    {
        addtoworkings(value: "%")
    }
    
    func addtoworkings(value : String){
        workings = workings + value
        CalculaterWorking.text = workings
    }
    @IBAction func plusTap(_ sender: Any) {
        
        addtoworkings(value: "+")
        
    }
    
    
    @IBAction func DiviedTap(_ sender: Any)
    {
        addtoworkings(value: "/")
    }
    
    @IBAction func SevenTap(_ sender: Any)
    {
        addtoworkings(value: "7")
    }
    
    @IBAction func Eighttap(_ sender: Any)
    {
        addtoworkings(value: "8")
    }
    
    @IBAction func NineTap(_ sender: Any)
    {
        addtoworkings(value: "9")
    }
    
    
    @IBAction func MultipificationTap(_ sender: Any)
    {
        addtoworkings(value: "*")
    }
    
    @IBAction func FourTap(_ sender: Any)
    {
        addtoworkings(value: "4")
    }
    
    @IBAction func FiveTap(_ sender: Any)
    {
        addtoworkings(value: "5")
    }
    
    @IBAction func SixTap(_ sender: Any)
    {
        addtoworkings(value: "6")
    }
    
    @IBAction func MinusTap(_ sender: Any)
    {
        addtoworkings(value: "-")
    }
    
    @IBAction func OneTap(_ sender: Any)
    {
        addtoworkings(value: "1")
    }
   
    
    func formatresult(result:Double) -> String
    
    {

        if (result.truncatingRemainder(dividingBy: 1) == 0 ) {
            
            return String(format: "%.0f", result)
        }
        else {
            
            return String(format: "%.2f", result)        }
        }
    
    @IBAction func TwoTap(_ sender: Any)
    {
        addtoworkings(value: "2")
    }
    
    @IBAction func ThreeTap(_ sender: Any)
    {
        addtoworkings(value: "3")
    }
    
    @IBAction func EqualTap(_ sender: Any)
    {
        let expression = NSExpression(format: workings)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultstring = formatresult(result: result)
        CalculaterResult.text = resultstring
    }

}



