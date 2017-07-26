//
//  ViewController.swift
//  Store
//
//  Created by Maeva Malih on 26/07/2017.
//  Copyright © 2017 Maeva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var cartButton: UIBarButtonItem!
    
    @IBOutlet weak var menuButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        sideMenus()
        customizeNavBar()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Action bar de menu

    func sideMenus(){
        
        if revealViewController() != nil {
            
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            cartButton.target = revealViewController()
            cartButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer() )
        }
        
    }
    
    func customizeNavBar() {
        
        navigationController?.navigationBar.tintColor = UIColor(colorLiteralRed: 255/255, green:  255/255 , blue: 255/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(colorLiteralRed: 35/255, green: 67/255, blue: 115/255, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
    }

}
