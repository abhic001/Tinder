//
//  ViewController.swift
//  Tinder
//
//  Created by Abhijeet Chakrabarti on 3/26/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {


    
    @IBOutlet weak var profileImageView: DraggableImageView!
    var imageCenterPoint : CGPoint?
    

    
    @IBAction func onSwipeGesture(sender: UIPanGestureRecognizer) {

        profileImageView.translateSelf(view, gesture: sender)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageCenterPoint = profileImageView.center
        
        profileImageView.image = UIImage(named: "ryan")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTapProfileImage(sender: UITapGestureRecognizer) {
        
        //let profileViewController = UIViewController(nibName: "ProfileViewController", bundle: nil)
        let profileViewController = ProfileViewController()
        presentViewController(profileViewController, animated: true, completion: nil)
    }
}
