//
//  ViewController.swift
//  Detecting_current_device_and_Orientation
//
//  Created by Macbook on 09/07/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = #imageLiteral(resourceName: "o")
whatIsMyDevice()
        
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        if UIDevice.current.orientation.isLandscape{
            imgView.image = #imageLiteral(resourceName: "l")
        }else{
            imgView.image = #imageLiteral(resourceName: "p")
        }
        
    }
    
    
    
    
    func whatIsMyDevice(){
        var phoneHeight = 0.00
        if UIDevice().userInterfaceIdiom == .phone{
            phoneHeight = Double(UIScreen.main.nativeBounds.height)
            switch phoneHeight{
            case 1136:
                print("iphone 5 family")
            case 1334:
                print("iphone 6 or 6s or 7 or 8")
            case 2436:
                print("iphone x")
            default:
                print("Unknown")
            }
        }
    }
}

