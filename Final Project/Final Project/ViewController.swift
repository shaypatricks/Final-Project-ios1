//
//  ViewController.swift
//  Final Project
//
//  Created by Steffen Hayes on 11/27/18.
//  Copyright © 2018 SteffenHayes. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var buttonMarker = 0
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
 
   


    @IBOutlet weak var History_button: UIButton!
    
    func prepare(for segue: UIStoryboardSegue, sender: UIButton?) {
        buttonMarker = (sender?.tag)!
        let destinationVC = segue.destination as! Historical
        destinationVC.buttonMarker = buttonMarker
    }
}



