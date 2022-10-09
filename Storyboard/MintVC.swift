//
//  MintVC.swift
//  Storyboard
//
//  Created by alex on 9/10/2022.
//

import UIKit

class MintVC: UIViewController {
    
    var contact : Contact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(contact?.name)
    }
}
