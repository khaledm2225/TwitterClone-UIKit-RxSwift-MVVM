//
//  ConversationsController.swift
//  TwitterClone
//
//  Created by KHALED on 04/01/2023.
//

import UIKit

class ConversationsController: UIViewController {

    //MARK: - Properties
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    
}


//MARK: - UI Helpers
extension ConversationsController {
    
    func configureUI(){
        configureView()
        configureNavigationBar()
    }
    
    func configureView(){
        self.view.backgroundColor = .lightGray
    }
    
    
    func configureNavigationBar(){
//        let twitterLogoImageView = UIImageView(image: UIImage(named: "twitterLogo")!)
//        twitterLogoImageView.contentMode = .scaleAspectFit
//        navigationItem.titleView = twitterLogoImageView
        navigationItem.title = "Conversations"
        
    }
    
}




