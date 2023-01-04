//
//  MainTabController.swift
//  TwitterClone
//
//  Created by KHALED on 04/01/2023.
//

import UIKit

class MainTabController: UITabBarController {
    
    
    //MARK: - Properties
    let actionButton: UIButton =  {
        let button = UIButton(type: .system)
        button.backgroundColor = .twitterBlue
        button.tintColor = .red
        button.setImage(.plus, for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        configureViewControllers()
        
        
    }
    
    
    
    
    
}

//MARK: - UI Helpers
extension MainTabController {
    
    func configureUI(){
        view.addSubview(actionButton)
        
        actionButton.setAnchors(bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: 64,
                                trailing: view.trailingAnchor, paddingTrailing: 15,
        width: 56, height: 56)
       actionButton.setRounded(cornerRadius: 28)
        
    }

    func configureViewControllers(){
        
        let feed = FeedController()
        let feedNav = templateNavigationController(imageName: "home",    rootViewController: feed)
        
        let explore = ExploreController()
        let exploreNav = templateNavigationController(imageName: "search",  rootViewController: explore)
        
        let notifications = NotificationsController()
        let notificationsNav = templateNavigationController(imageName: "heart",   rootViewController: notifications)
        
        let conversations = ConversationsController()
        let conversationsNav = templateNavigationController(imageName: "message", rootViewController: conversations)
        
        viewControllers = [feedNav, exploreNav, notificationsNav, conversationsNav]
    }
    
    
    func templateNavigationController(imageName: String, rootViewController: UIViewController) -> UINavigationController{
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.tabBarItem.image = UIImage(named: imageName)!
        navigationController.navigationBar.barTintColor = .white
        return navigationController
    }
    
}


//MARK: - Selectors
extension MainTabController {
    @objc func actionButtonTapped (){
        print("I'm in the Master branch")
    }
}
