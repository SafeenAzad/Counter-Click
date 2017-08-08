//
//  ViewController.swift
//  Click Counter
//
//  Created by Safeen Azad on 8/8/17.
//  Copyright © 2017 SafeenAzad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label : UILabel!
    var additionalLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.frame = CGRect.init(x: 175, y: 175, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        let addlabel = UILabel()
        addlabel.frame = CGRect.init(x: 105, y: 175, width: 60, height: 60)
        addlabel.text = "0"
        self.view.addSubview(addlabel)
        self.additionalLabel = addlabel
        
        let button = UIButton()
        button.frame = CGRect.init(x: 275, y: 175, width: 60, height: 60)
        button.setTitle("Count", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        
        let button2 = UIButton()
        button2.frame = CGRect(x: 275, y: 275, width: 60, height: 60)
        button2.setTitle("Decrement", for: .normal)
        button2.setTitleColor(UIColor.brown, for: .normal)
        self.view.addSubview(button2)
        
        button2.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        
        
        
        
    }
    
    func decrementCount(){
        self.count = self.count - 1
        self.label.text = "\(self.count)"
    }
    
    
    func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
        self.additionalLabel.text = "\(self.count)"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

