# DynamicPopupView
Dynamic height pop view to accmodate lenghty content in a popup view for e.g Terms and Conditions with scroll support. 

![Alt text](demo.gif?raw=true "Title")

# Features
  It automatically manages its height. Max height is the height of the device with 20 padding from top and bottom. </br>
  Aligns it self to centre of the screen.</br>
  Scoll view is added to support the lengthy content.</br>
  Customizable show and hide animation.</br>

# Installation:  
  pod 'DynamicPopupView'

# Usage:
  var dynamicPopUpVw = DynamicPopupVw()</br>
  dynamicPopUpVw?.delegate = self</br>
  dynamicPopUpVw?.showAnimationType = UIView.AnimationOptions.transitionCurlDown</br>
  dynamicPopUpVw?.hideAnimationType = UIView.AnimationOptions.transitionCurlUp</br>
  dynamicPopUpVw?.delayToAnimate = 1</br>
  dynamicPopUpVw?.titleLbl.text = "Terms and Conditions"</br>
  dynamicPopUpVw?.contentTxtVw.text = "Terms and Conditions"</br>
  Show</br>
  dynamicPopUpVw.show(view:self.view)</br>
  Hide</br>
  dynamicPopUpVw.hide()</br>
  Delegate</br>
  DynamicPopupVwProtocol</br>
  func termAccepted()</br></br>
  func termDeclined()</br>
  
