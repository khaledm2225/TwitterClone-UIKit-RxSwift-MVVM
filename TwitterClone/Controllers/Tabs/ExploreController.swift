//
//  ExploreController.swift
//  TwitterClone
//
//  Created by KHALED on 04/01/2023.
//

import UIKit

class ExploreController: UIViewController {
    
    
    
    //MARK: - Properties
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    
    
    
    
}


//MARK: - UI Helpers
extension ExploreController {
    
    func configureUI(){
        configureView()
        configureNavigationBar()
    }
    
    func configureView(){
        self.view.backgroundColor = .red
    }
    
    
    func configureNavigationBar(){
//        let twitterLogoImageView = UIImageView(image: UIImage(named: "twitterLogo")!)
//        twitterLogoImageView.contentMode = .scaleAspectFit
//        navigationItem.titleView = twitterLogoImageView
        navigationItem.title = "Explore"
        
    }
    
}





