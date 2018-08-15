//
//  ViewController.swift
//  ExampleTest
//
//  Created by Naveed Ahmad on 15/08/2018.
//  Copyright © 2018 Naveed Ahmad. All rights reserved.
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

    @IBAction func changeLanguage(_ sender: Any) {
        let button = sender as! UIButton
        var language : String?
        if button.tag == 0 {
            language = "en"
        }else{
            language = "ar"
        }
        
        Bundle.setLanguage(language)
        
        performSegue(withIdentifier: "home_segue", sender: self)
    }
    
}

