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
        dynamicPopUpVw?.contentTxtVw.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non velit luctus, blandit odio ut, sodales risus. Aenean sit amet malesuada lacus. Vivamus rhoncus sem ac massa tristique, ut dapibus ipsum dignissim. Phasellus bibendum est et tortor faucibus venenatis. Nulla vel mauris tempus, egestas arcu vitae, molestie dui. Curabitur varius aliquet nisi ac dictum. Fusce vestibulum leo et massa accumsan sollicitudin. Mauris finibus rhoncus eros. Quisque luctus turpis id lorem vestibulum, nec efficitur purus sodales. Sed pulvinar leo nec vestibulum rhoncus. Suspendisse accumsan quam sed elit blandit consectetur. Duis non ultrices nulla. In quis eros non odio lacinia feugiat.In vulputate lectus sapien, vitae pharetra neque maximus aliquet. Mauris dolor risus, fermentum et sapien non, efficitur feugiat justo. Vivamus et metus sapien. Donec fringilla ac lorem hendrerit ornare. Etiam porta urna eget consequat fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vitae convallis purus.Aenean ac tincidunt purus. Aliquam a aliquam elit. Vivamus eu tincidunt mauris. Suspendisse tristique, odio pellentesque ornare ultricies, arcu ex rhoncus tortor, et rutrum enim urna non erat. Etiam eleifend quam non lacus porta, id volutpat leo sagittis. Integer ac quam vitae neque dignissim condimentum. Curabitur vitae ultrices nisl, id molestie eros. Integer pharetra ornare augue et ullamcorper. Aenean id sagittis arcu. Sed mollis viverra tellus eu lobortis. Nulla rhoncus volutpat eros quis venenatis. Ut tempus, quam ut malesuada finibus, dolor nibh dapibus felis, a rhoncus odio lectus vitae risus. Duis porttitor turpis magna, vel ultricies libero euismod a.Nunc tristique pellentesque velit sed vehicula. Nullam ultricies orci suscipit, consectetur mauris sit amet, pulvinar tellus. Nulla vitae venenatis neque. Ut vehicula posuere ex, sit amet dignissim ante laoreet et. Fusce volutpat maximus elit, non vestibulum nibh auctor sit amet. Pellentesque vitae auctor massa, at sollicitudin tortor. Phasellus porttitor felis vitae ante rhoncus, ut pellentesque tortor maximus. Nulla cursus semper odio a commodo. Duis pretium nisi vel nibh rutrum, id lobortis nunc varius. Aenean hendrerit diam at elit maximus pulvinar. Nulla aliquam ullamcorper est eu interdum. In sed diam vel odio malesuada facilisis in eu lacus. Curabitur sagittis lectus eget nisl congue sodales. Vivamus lorem justo, commodo ac urna sed, varius egestas arcu. Mauris facilisis mollis tellus, eu ultrices nibh. Sed vehicula, arcu et viverra mollis, risus nunc dignissim lacus, vitae facilisis nulla nibh ut leo."
        dynamicPopUpVw?.titleLbl.text = "Dynamic Popup View"
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
