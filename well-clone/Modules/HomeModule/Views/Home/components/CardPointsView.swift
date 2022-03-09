//
//  CardPointsView.swift
//  well-clone
//
//  Created by TheForce on 4/03/22.
//

import UIKit

@IBDesignable
class CardPointsView: UIView {
    
    @IBOutlet var viewCard: UIView!
    @IBOutlet var subtitleCard: UILabel!
    @IBOutlet var titleCard: UILabel!
    @IBOutlet weak var coinsSection: UIView!
    
    // Sirven para activar un segue al hacer touch en esta view
    var parentViewController: UIViewController!
    var segueIdentifier: String!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureView()

    }
    
    private func configureView() {
        guard let view = self.loadViewFromNib(nibName: "CardPointsView") else {return}
        view.frame = self.bounds
        
        self.coinsSection.layer.cornerRadius = 5
        self.coinsSection.clipsToBounds = true
        
        self.viewCard.layer.cornerRadius = 10
        self.viewCard.clipsToBounds = true
        
        self.titleCard.text = "Let's hear those numbers!"
        self.subtitleCard.text = "PERSONALIZE YOUR EXPERIENCE"
        
        
    
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.checkAction))
            
        view.addGestureRecognizer(gesture)
        
        
        self.addSubview(view)
        
        
        
        
    }
    
    func setBackgroundColor(_ color: UIColor) {
        self.viewCard.backgroundColor = color
    }
    
    
    
    @objc func checkAction(sender: UITapGestureRecognizer? = nil) {
     
        // Activamos el segue indicado
        parentViewController.performSegue(withIdentifier: segueIdentifier, sender: parentViewController)
    }
}

