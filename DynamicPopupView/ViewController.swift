//
//  ViewController.swift
//  DynamicPopupViewSwift
//
//  Created by Mubeen Raza Qazi on 19/12/2019.
//  Copyright © 2019 Mubeen Raza Qazi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DynamicPopupVwProtocol{
    
    
    var dynamicPopUpVw : DynamicPopupVw?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        dynamicPopUpVw = DynamicPopupVw()
        dynamicPopUpVw?.delegate = self
        dynamicPopUpVw?.showAnimationType = UIView.AnimationOptions.transitionCurlDown
        dynamicPopUpVw?.hideAnimationType = UIView.AnimationOptions.transitionCurlUp
        dynamicPopUpVw?.delayToAnimate = 1
        dynamicPopUpVw?.contentVw.backgroundColor = UIColor.cyan
        dynamicPopUpVw?.contentTxtVw.text = "Lorem in velit luctus, blandit odio ut"
        dynamicPopUpVw?.titleLbl.text = "Less content"
    }

    @IBAction func showPopUp(_ sender: Any) {
        dynamicPopUpVw?.showView(view: self.view)
    }
    
    func termAccepted() {
        dynamicPopUpVw?.hideView()
    }
    
    func termDeclined() {
        dynamicPopUpVw?.hideView()
    }
    
}
