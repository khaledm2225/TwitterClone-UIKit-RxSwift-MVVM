//
//  FeedController.swift
//  TwitterClone
//
//  Created by KHALED on 04/01/2023.
//

import UIKit

class FeedController: UIViewController {
    
    
    
    //MARK: - Properties
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    
    
    
    
    
    
}

//MARK: - UI Helpers
extension FeedController {
    
    func configureUI(){
        configureView()
        configureNavigationBar()
    }
    
    func configureView(){
        self.view.backgroundColor = .lightGray
    }
    
    
    func configureNavigationBar(){
        let twitterLogoImageView = UIImageView(image: UIImage(named: "twitterLogo")!)
        twitterLogoImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = twitterLogoImageView
        
    }
    
}

