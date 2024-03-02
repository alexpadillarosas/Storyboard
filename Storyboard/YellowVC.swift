//
//  YellowVC.swift
//  Storyboard
//
//  Created by alex on 9/10/2022.
//

import UIKit

class YellowVC: UIViewController {

    var contact : Contact!
    var fruit : String = "Grapes"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contact = Contact(photo: "Madison.jpg", name: "Madison", position: "Software Architect", email: "madison.grant@gmail.com", phone: "+6427656098")
    }

    /**
     This function will be triggered before transitioning to the next Scene
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination.isKind(of: MintVC.self){
            print("Yes")
            let mintVC : MintVC = segue.destination as! MintVC
            mintVC.contact = contact
        }
//        Another way to do the above
//        if let mintVC = segue.destination as? MintVC {
//            print("Yes")
//            mintVC.contact = contact
//        }
        
        
    }
    /**
     This function needs to be implemented before defining an unwind segue
     */
    @IBAction func unwindToYellowVC( _ unwindSegue: UIStoryboardSegue){
        
        if unwindSegue.source.isKind(of: OrangeVC.self){
            print("We came back from Orange")
        }
        if unwindSegue.source.isKind(of: RedVC.self){
            print("We came back from Red")
            print("We received the fruit \(fruit)")
        }
        
//        Another way to do it
//        if let orangeVC = unwindSegue.source as? OrangeVC {
//            print("We came back from Orange")
//        }
//        if let redVC = unwindSegue.source as? RedVC {
//            print("We came back from Red")
//        }
    }
    
}
