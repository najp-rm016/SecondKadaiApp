//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by NSPC201admin on 2024/01/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputName: UITextField!
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sVC:SecondViewController = segue.destination as! SecondViewController
        sVC.name = inputName.text!
        
    }


}

