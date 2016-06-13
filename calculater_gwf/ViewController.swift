//
//  ViewController.swift
//  calculater_gwf
//
//  Created by ciccic on 16/6/13.
//  Copyright © 2016年 cic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result_text: UILabel!
    var first_number = ""
    var last_number = ""
    var result_number = ""
    var sign = true
    var sign_number = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func one(sender: AnyObject) {
        if sign{
        first_number = first_number + "1"
            result_text.text = String(Int(first_number)!)
        }else{
        last_number = last_number + "1"
            result_text.text = result_number + String(Int(last_number)!)
        }
    }
    
    @IBAction func two(sender: AnyObject) {
        if sign{
            first_number = first_number + "2"
            result_text.text = String(Int(first_number)!)
        }else{
            last_number = last_number + "2"
            result_text.text = result_number + String(Int(last_number)!)
        }
    }
    
    @IBAction func three(sender: AnyObject) {
        if sign{
            first_number = first_number + "3"
            result_text.text = String(Int(first_number)!)
        }else{
            last_number = last_number + "3"
            result_text.text = result_number + String(Int(last_number)!)
        }
    }
    
    @IBAction func four(sender: AnyObject) {
        if sign{
            first_number = first_number + "4"
            result_text.text = String(Int(first_number)!)
        }else{
            last_number = last_number + "4"
            result_text.text = result_number + String(Int(last_number)!)
        }
    }
    
    @IBAction func five(sender: AnyObject) {
        if sign{
            first_number = first_number + "5"
            result_text.text = String(Int(first_number)!)
        }else{
            last_number = last_number + "5"
            result_text.text = result_number + String(Int(last_number)!)
        }
    }
    
    @IBAction func six(sender: AnyObject) {
        if sign{
            first_number = first_number + "6"
            result_text.text = String(Int(first_number)!)
        }else{
            last_number = last_number + "6"
            result_text.text = result_number + String(Int(last_number)!)
        }
    }

    @IBAction func seven(sender: AnyObject) {
        if sign{
            first_number = first_number + "7"
            result_text.text = String(Int(first_number)!)
        }else{
            last_number = last_number + "7"
            result_text.text = result_number + String(Int(last_number)!)
        }
    }
    
    @IBAction func eight(sender: AnyObject) {
        if sign{
            first_number = first_number + "8"
            result_text.text = String(Int(first_number)!)
        }else{
            last_number = last_number + "8"
            result_text.text = result_number + String(Int(last_number)!)
        }
    }
    
    @IBAction func nine(sender: AnyObject) {
        if sign{
            first_number = first_number + "9"
            result_text.text = String(Int(first_number)!)
        }else{
            last_number = last_number + "9"
            result_text.text = result_number + String(Int(last_number)!)
        }
    }
    
    @IBAction func zero(sender: AnyObject) {
        if sign{
            first_number = first_number + "0"
            result_text.text = String(Int(first_number)!)
        }else{
            last_number = last_number + "0"
            result_text.text = result_number + String(Int(last_number)!)
        }
    }
    
    @IBAction func add_action(sender: AnyObject) {
        if sign{
            if first_number != ""{
                result_number = first_number + "+"
                result_text.text = result_number
                sign = false
                sign_number = 1
            }
        }else{
        alert_view(1)
        }
    }
    
    @IBAction func min_action(sender: AnyObject) {
        if sign{
            if first_number != ""{
                result_number = first_number + "-"
                result_text.text = result_number
                sign = false
                sign_number = 2
            }
        }else{
            alert_view(1)
        }
    }
    
    @IBAction func x_action(sender: AnyObject) {
        if sign{
            if first_number != ""{
                result_number = first_number + "×"
                result_text.text = result_number
                sign = false
                sign_number = 3
            }
        }else{
            alert_view(1)
        }
    }
    
    @IBAction func divided_action(sender: AnyObject) {
        if sign{
            if first_number != ""{
                result_number = first_number + "/"
                result_text.text = result_number
                sign = false
                sign_number = 4
            }
        }else{
            alert_view(1)
        }
    }
    
    @IBAction func equal_action(sender: AnyObject) {
        if first_number != "" && last_number != ""{
            if sign_number == 1{
                result_text.text = String(Int(first_number)! + Int(last_number)!)
            }
            if sign_number == 2{
                result_text.text = String(Int(first_number)! - Int(last_number)!)
            }
            if sign_number == 3{
                result_text.text = String(Int(first_number)! * Int(last_number)!)
            }
            if sign_number == 4{
                if Int(last_number) != 0{
                    result_text.text = String(Int(first_number)! / Int(last_number)!)
                }else{
                    alert_view(2)
                }
            }
            first_number = ""
            last_number = ""
            sign = true
        }else{
            alert_view(3)
        }
    }
    
    //弹出窗口
    func alert_view(error:Int){
        let alert = UIAlertView()
        if error == 1{
        alert.title = "sign error."
        }
        if error == 2{
            alert.title = "The denominator is not 0."
        }
        if error == 3{
            alert.title = "Please input complete formula."
        }
        
        alert.addButtonWithTitle("OK")
        alert.show()
    }
    
    

}

