//
//  ViewController.swift
//  LightItUp
//
//  Created by Bruce Duffy on 10/24/22.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IB Outlets
    
    @IBOutlet weak var lightButton: UIButton!
    
        
    // MARK: - Instance Properties
    
    var lightOn = false
    
    
    // MARK: - VDL
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upateUI()
    }

    // MARK: - IB Actions
    
    @IBAction func powerButtonTapped(_ sender: UIButton) {
        upateUI()
    }
    
    // MARK: - Instance Methods
    
    fileprivate func upateUI() {
        // lightOn = !lightOn
        lightOn.toggle()
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
            lightButton.setTitleColor(.white, for: .normal)
        }
    }

}

