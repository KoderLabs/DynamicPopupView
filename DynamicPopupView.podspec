Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '11.0'
s.name = "DynamicPopupView"
s.summary = "Dynamic Popup View accommodate lengthy content with dynamic height."
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Mubeen Qazi" => "mubeenqazi32@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/MubeenQazi/DynamicPopupView"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/MubeenQazi/DynamicPopupView.git",
             :tag => "#{s.version}" }

# 8
s.source_files = "DynamicPopupView/**/*.{swift}"

# 9
s.resources = "DynamicPopupView/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

end
