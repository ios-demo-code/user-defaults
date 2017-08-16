//
//  ViewController.swift
//  UserDefaults 30-07-2017
//
//  Created by Soeng Saravit on 7/30/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    var userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let index = userDefaults.integer(forKey: "bgColor")
        changeBackgroundColor(index: index)
        self.segmentedControl.selectedSegmentIndex = index
       
    }
    
    @IBAction func segmentedControlAction(_ sender: Any) {
        let index = self.segmentedControl.selectedSegmentIndex
        userDefaults.set(index, forKey: "bgColor")
        changeBackgroundColor(index: index)
    }
    
    func changeBackgroundColor(index:Int){
        switch index {
        case 0:
            self.view.backgroundColor = UIColor.green
        case 1:
            self.view.backgroundColor = UIColor.red
        case 2:
            self.view.backgroundColor = UIColor.yellow
        default:
            self.view.backgroundColor = UIColor.white
        }
    }
    
}

