//
//  SignInViewController.swift
//  well-clone
//
//  Created by TheForce on 1/03/22.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backButtonTitle = ""
        title = "SIGN IN HELP"
        
        setLogoToNavbar()
    }
    
    
    func setLogoToNavbar () {
        // referenciamos la imagen
        let image: UIImage = UIImage(named: "well-logo.png")!
        // creamos un imageView
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        // lo seteamos en aspect fit
        imageView.contentMode = .scaleAspectFit
        // insertamos la imagen en el imageView
        imageView.image = image
        // insertamos el imageView en el titulo el navbar
        self.navigationItem.titleView = imageView
        self.navigationItem.titleView?.transform.scaledBy(x: 1.8, y: 1.8)
        //navigationItem.backButtonTitle = ""
    }

}
