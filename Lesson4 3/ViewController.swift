//
//  ViewController.swift
//  Lesson4 3
//
//  Created by NSPC201admin on 2024/01/16.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func handle(_ sender: Any) {
        label.text = "Swift"
    }
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

