//
//  HomeViewController.swift
//  well-clone
//
//  Created by TheForce on 4/03/22.
//

import UIKit
 
class HomeViewController: UIViewController {

    

    @IBOutlet weak var GettingStartedCard: CardPointsView!
    
    let setWeightViewController = SetWeightViewController()
    
    @IBOutlet weak var scrollViewCards: UIScrollView!
    
    var contentWidthScroll: CGFloat = 0.0
    
    let colors: [UIColor] = [.systemBlue, .systemRed, .systemCyan]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GettingStartedCard.parentViewController = self
        // le pasamos el segue-identifier de la vista a la que irá este card
        GettingStartedCard.segueIdentifier = setWeightViewController.segueIdentifier
        
        
    
        // Ocultamos la barra del navigation
        navigationController?.setNavigationBarHidden(true, animated: false)

        for cardNumber in 0...(colors.count - 1) {
            
            let cardPoints = CardPointsView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
            
            cardPoints.setBackgroundColor(colors[cardNumber])
            
            var xCoordinate = ((view.frame.width - 45.00) * CGFloat(cardNumber))
            
            if cardNumber > 0 {
                xCoordinate = xCoordinate + (15.00 * CGFloat(cardNumber))
            }
            
            scrollViewCards.addSubview(cardPoints)
            
            cardPoints.frame = CGRect(x: xCoordinate + 15.00, y: 0, width: view.frame.width - 45.00, height: scrollViewCards.frame.height)
            
            contentWidthScroll += view.frame.width - 25.00
            
            
        }
        
        scrollViewCards.contentSize = CGSize(width: contentWidthScroll, height: scrollViewCards.frame.height)
    }


    
    
    func showLoadingView() {
        let loadingVC = LoadingViewController()
        loadingVC.modalPresentationStyle = .overCurrentContext
        loadingVC.modalTransitionStyle = .crossDissolve
        
        present(loadingVC, animated: true, completion: nil)
        
        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { timer in
            loadingVC.dismiss(animated: true, completion: nil)
            timer.invalidate()
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == setWeightViewController.segueIdentifier {
            if let vcDestination = segue.destination as? SetWeightViewController {
                showLoadingView()
            }
        }
    }
    
}
