//
//  YellowVC.swift
//  Storyboard
//
//  Created by alex on 9/10/2022.
//

import UIKit

class YellowVC: UIViewController {

    var contact : Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contact = Contact(photo: "Madison.jpg", name: "Madison", position: "Software Architect", email: "madison.grant@gmail.com", phone: "+6427656098")
    }

    /**
     This function will be triggered before transitioning to the next Scene
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        if segue.destination.isKind(of: MintVC.self){
//            print("Yes")
//            var mintVC : MintVC = segue.destination as! MintVC
//        }
        
        if let mintVC = segue.destination as? MintVC {
            print("Yes")
            mintVC.contact = contact
        }
        
        
    }
    /**
     This function needs to be implemented before defining an unwind segue
     */
    @IBAction func unwindToYellowVC( _ unwindSegue: UIStoryboardSegue){
        if let orangeVC = unwindSegue.source as? OrangeVC {
            print("We came back from Orange")
        }
        if let redVC = unwindSegue.source as? RedVC {
            print("We came back from Red")
        }
    }
    
}
