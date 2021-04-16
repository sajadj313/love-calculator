//
//  ViewController.swift
//  Love Calculator
//
//  Created by Sajad Jaward on 4/16/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView1: UITextField!
    
    @IBOutlet weak var textView2: UITextField!
    
    @IBOutlet weak var resultView1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onButtonTapped(_ sender: UIButton) {
        resultView1.alpha = 0.0
        print(textView1.text!)
        print(textView2.text!)
        
        let name = "\(textView1.text!) \(textView2.text!)"
        
        let cunz = count(name:name)
        resultView1.text = "\(cunz)%"
        resultView1.alpha = 1.0
        
    }
    
    func count(name: String)->Int{
        
        var result : Int = 0
        
        if(name.count == 1){
            return 1
        }
        
        if name.count == 0{
            return 0
        }
        
        let charnam = Array(name)[0]
        
        for nm in name{
            if nm == charnam {
                result = result + 1
            }
        }
        let replacedTxt = name.replacingOccurrences(of: String(charnam), with: "",options: .literal)
        return result + count(name: replacedTxt)
    }
    
}

