//
//  Extensions.swift
//  TwitterClone
//
//  Created by KHALED on 04/01/2023.
//

import UIKit

//MARK: - Layout Extension
extension UIView{
    
    func setAnchors(top:      NSLayoutYAxisAnchor? = nil, paddintTop:      CGFloat = 0,
                    leading:  NSLayoutXAxisAnchor? = nil, paddingLeading:  CGFloat = 0,
                    bottom:   NSLayoutYAxisAnchor? = nil, paddingBottom:   CGFloat = 0,
                    trailing: NSLayoutXAxisAnchor? = nil, paddingTrailing: CGFloat = 0,
                    centerX:  NSLayoutXAxisAnchor? = nil, centerY: NSLayoutYAxisAnchor? = nil,
                    width: CGFloat? = nil, height: CGFloat? = nil){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top{
            topAnchor.constraint(equalTo: top, constant: paddintTop).isActive = true
        }
        
        if let leading = leading{
            leadingAnchor.constraint(equalTo: leading, constant: paddingLeading).isActive = true
        }
        
        if let bottom = bottom{
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let trailing = trailing{
            trailingAnchor.constraint(equalTo: trailing, constant: -paddingTrailing).isActive = true
        }
        
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        
        if let centerX = centerX {
            centerXAnchor.constraint(equalTo: centerX).isActive = true
        }
        
        if let centerY = centerY {
            centerYAnchor.constraint(equalTo: centerY).isActive = true
        }
        
    }
    
    
    func center(inView view: UIView, yConstant: CGFloat? = 0){
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: yConstant!).isActive = true
    }
    
    
    func centerX(inView view: UIView, topAnchor: NSLayoutYAxisAnchor? = nil,  paddingTop: CGFloat? = nil){
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        if let topAnchor = topAnchor, let padding = paddingTop {
            self.topAnchor.constraint(equalTo: topAnchor, constant: padding).isActive = true
        }
    }
    
    func centerY(inView view: UIView, leadingAnchor: NSLayoutXAxisAnchor? = nil,  paddingLeading: CGFloat? = nil, constant: CGFloat?  = 0 ){
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant!).isActive = true
        if let leadingAnchor = leadingAnchor, let padding = paddingLeading {
            self.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding).isActive = true
        }
    }
    
    func setDiemneions(width: CGFloat, height: CGFloat){
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: width).isActive = true
        heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    
    func addConstraintsToFillView(_ view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        setAnchors(top: view.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
    }
    
    
    func setRounded(cornerRadius: CGFloat){
        layer.cornerRadius = cornerRadius
    }
    
    
    
}


//MARK: - UIColor
extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/256, green: green/256, blue: blue/256, alpha: 1)
    }
    
    static let twitterBlue  = UIColor.rgb(red: 29, green: 161, blue: 242)
    static let mainblack = UIColor.rgb(red: 20, green: 23, blue: 26)
    static let mainGray  = UIColor.rgb(red: 170, green: 184, blue: 194)
    
    static let customRed = UIColor.rgb(red: 29, green: 161, blue: 65)
    static let customPurole = UIColor.rgb(red: 128, green: 87, blue: 194)
    
    
}


//MARK: - Images
extension UIImage{
    static let plus = UIImage(systemName: "plus.bubble")!
    static let twitterLogo = UIImage(named: "twitterLogo")!
    static let mail = UIImage(systemName: "envelope")!
    static let password = UIImage(systemName: "lock")!
    static let twitterLogoWhite = UIImage(named: "twitter_logo_white")!
}
