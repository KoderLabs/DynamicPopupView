//
//  DynamicPopupVw.swift
//  DynamicPopupViewSwift
//
//  Created by Mubeen Raza Qazi on 19/12/2019.
//  Copyright © 2019 Mubeen Raza Qazi. All rights reserved.
//

import UIKit

protocol DynamicPopupVwProtocol : class {
    func termAccepted()
    func termDeclined()
}

class DynamicPopupVw: UIView {

    @IBOutlet weak var termRejectBtn: UIButton!
    @IBOutlet weak var termAcceptBtn: UIButton!
    @IBOutlet weak var contentTxtVw: UITextView!
    @IBOutlet weak var titleLbl: UILabel!
    var showAnimationType: AnimationOptions?
    var hideAnimationType: AnimationOptions?
    var delayToAnimate: Double?
    @IBOutlet var contentVw: UIView!
    weak var delegate : DynamicPopupVwProtocol?
    
    func customInit() {
        Bundle.main.loadNibNamed("DynamicPopupView", owner: self, options: nil)
        showAnimationType = AnimationOptions.transitionFlipFromRight
        hideAnimationType = AnimationOptions.transitionFlipFromLeft
        delayToAnimate = 0.5
        contentVw.alpha = 0
        self.addSubview(contentVw)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.customInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.customInit()
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        if((self.superview) != nil){
            self.setConstraint()
        }
    }
    
    func showView(view:UIView){
        view.addSubview(self)
        UIView.transition(with: contentVw, duration: delayToAnimate!, options: showAnimationType!, animations: {
            self.contentVw.alpha = 1
        }) { (Bool) in
            
        }
    }
    
    func hideView(){
        UIView.transition(with: contentVw, duration: delayToAnimate!, options: hideAnimationType!, animations: {
            self.contentVw.alpha = 0
        }) { (Bool) in
            self.removeFromSuperview()
        }
    }
    
    func setConstraint() {
        self.translatesAutoresizingMaskIntoConstraints = false
        contentVw.translatesAutoresizingMaskIntoConstraints = false
        let maxHeight = self.superview?.frame.size.height
        self.addConstraint(NSLayoutConstraint.init(item: self, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1.0, constant: maxHeight ?? 100))
        
        self.superview?.addConstraint(NSLayoutConstraint.init(item: self, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.superview, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1.0, constant: 20))
        
        self.superview?.addConstraint(NSLayoutConstraint.init(item: self, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.superview, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1.0, constant: -20))
        
        self.superview?.addConstraint(NSLayoutConstraint.init(item: self, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.superview, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1.0, constant: 0))
        
        self.superview?.addConstraint(NSLayoutConstraint.init(item: self, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.greaterThanOrEqual, toItem: self.superview, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 20))
        
        contentVw.addConstraint(NSLayoutConstraint.init(item: contentVw!, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.lessThanOrEqual, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1.0, constant: maxHeight ?? 100))
        
        self.superview?.addConstraint(NSLayoutConstraint.init(item: contentVw!, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.superview, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1.0, constant: 20))
        
        self.superview?.addConstraint(NSLayoutConstraint.init(item: contentVw!, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.superview, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1.0, constant: -20))
        
        self.superview?.addConstraint(NSLayoutConstraint.init(item: contentVw!, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.superview, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1.0, constant: 0))
        
        self.superview?.addConstraint(NSLayoutConstraint.init(item: contentVw!, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.greaterThanOrEqual, toItem: self.superview, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 20))
    }
    
    
    @IBAction func acceptBtnTapped(_ sender: Any) {
        delegate?.termAccepted()
    }
    
    @IBAction func rejectBtnTapped(_ sender: Any) {
        delegate?.termDeclined()
    }
    
}
