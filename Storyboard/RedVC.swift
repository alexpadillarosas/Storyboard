//
//  RedVC.swift
//  Storyboard
//
//  Created by alex on 9/10/2022.
//

import UIKit

class RedVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func doSomethingGoBackDidPress(_ sender: Any) {
        print("button clicked")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination.isKind(of: YellowVC.self){
            //declare a constant to manipulate and immediately get it as reference of the destintion (YellowVC)
            let yellowVC : YellowVC = segue.destination as! YellowVC
            yellowVC.fruit = "Apple"
        }
    }
}
