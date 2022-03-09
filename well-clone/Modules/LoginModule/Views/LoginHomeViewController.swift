//
//  HomeViewController.swift
//  well-clone
//
//  Created by TheForce on 1/03/22.
//

import UIKit

class LoginHomeViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var createAccountButton: UIButton!
    @IBOutlet var signInButton: UIButton!
    
    
    // Modelo que contiene la data del scroll del home
    var homeScrollBrain = LoginHomeScrollBrain()
    
    @IBOutlet weak var homeScrollView: UIScrollView!
    
    var contentWidth: CGFloat = 0.0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backButtonTitle = ""
         
        homeScrollView.delegate = self
        
        let viewsScrollCount = homeScrollBrain.getViewsCount()
                
        for viewNumber in 0...(viewsScrollCount - 1)  {
            // Instanciamos la vista modelo que usara el scrollview del home
            let viewScroll = SubviewHome(frame: CGRect(x: CGFloat(0), y: CGFloat(0), width: view.frame.width, height: view.frame.height))
            
            let titleViewScroll = homeScrollBrain.getTitle(viewNumber)
            let infoViewScroll = homeScrollBrain.getInfo(viewNumber)
            let nameImageViewScroll = homeScrollBrain.getImage(viewNumber)
            let nameLogoImage = homeScrollBrain.getLogoImage(viewNumber)
            let backgroundColorViewScroll = homeScrollBrain.getBackgroundColor(viewNumber)
            let textColor = homeScrollBrain.getTextColor(viewNumber)
            
            viewScroll.titleLabel.text = titleViewScroll
            viewScroll.infoLabel.text = infoViewScroll
            viewScroll.image.image = UIImage(named: nameImageViewScroll)
            viewScroll.backgroundColor = backgroundColorViewScroll
            viewScroll.setTextColor(textColor)
            viewScroll.logoImage.image = UIImage(named: nameLogoImage)
                
            let xCoordinate = view.frame.width * CGFloat(viewNumber)
            
            homeScrollView.addSubview(viewScroll)
            
            let width = homeScrollView.frame.width - view.safeAreaInsets.left - view.safeAreaInsets.right
            
            let height = homeScrollView.frame.height - view.safeAreaInsets.top - view.safeAreaInsets.bottom
            
            viewScroll.frame = CGRect(x: xCoordinate, y: 0, width: width, height: height)
            
            contentWidth += view.frame.width
            
        }
        
        homeScrollView.contentSize = CGSize(width: contentWidth, height: homeScrollView.frame.height)

        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let currentPage = Int(scrollView.contentOffset.x / CGFloat(view.frame.width))
        // establecemos el numbero de paginas para el pageControl
        pageControl.numberOfPages = homeScrollBrain.getViewsCount()
        // actualizamos el indicador de la pagina actual con cada scroll
        pageControl.currentPage = currentPage
        
        setColorButtons(currentPage)
    }
    
    func setColorButtons(_ currentPage: Int) {
        createAccountButton.backgroundColor = homeScrollBrain.getBackgroundButtonColor(currentPage)
        
        createAccountButton.layer.cornerRadius = createAccountButton.frame.height / 2
        createAccountButton.clipsToBounds = true
        
        signInButton.tintColor = homeScrollBrain.getBackgroundButtonColor(currentPage)
        createAccountButton.tintColor = .red
    }
}
