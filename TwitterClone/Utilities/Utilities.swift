//
//  Utilities.swift
//  TwitterClone
//
//  Created by KHALED on 05/01/2023.
//

import UIKit

class Utilities {
    
    
    func createInputField(icon: UIImage, textField: UITextField, viewHeight: CGFloat? = 50) -> UIView {
        //create a custom input field with icon in the left side and underliying line
        let container     = UIView()
        container.backgroundColor = .clear
        container.setAnchors(height: viewHeight)
       
        let iconImageView = UIImageView()
        let undreLineView = UIView()
        [iconImageView, textField].forEach({container.addSubview($0)})
        
        iconImageView.image = icon
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.tintColor = .white
        iconImageView.setAnchors(leading: container.leadingAnchor, paddingLeading: 8,
                                 bottom: container.bottomAnchor,   paddingBottom: 8, width: 24, height: 24)
        

        textField.backgroundColor = .clear
        textField.minimumFontSize = 0.1
        textField.font = .systemFont(ofSize: 17)
        textField.tintColor = .twitterBlue
        textField.setAnchors(leading: iconImageView.trailingAnchor, paddingLeading: 8,
                             bottom: container.bottomAnchor, paddingBottom: 8,
                             trailing: container.trailingAnchor)
        
//        let textFieldPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: textField.frame.height))
//        textField.leftView =  textFieldPaddingView
//        textField.leftViewMode = .always
//
//        textField.rightView =  textFieldPaddingView
//        textField.rightViewMode = .always
//
//        undreLineView.backgroundColor = .white
//        undreLineView.setAnchors(top: textField.topAnchor)
//
        
        
        return container
    }
    
    
    
    
    
    
    
}
