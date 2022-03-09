//
//  HomeBrain.swift
//  well-clone
//
//  Created by TheForce on 3/03/22.
//

import Foundation
import UIKit

struct LoginHomeScrollBrain {
    private let views = [
        LoginHomeScroll(title: "Glad you're here", info: "Whatever your health needs are, Well was built specifically for you to take control, grow, and benefit from achievable goals", image: "homeScrollview0", backgroundColor: .systemBlue, textColor: .white, createAccountButtonColor: .white, signInButtonColor: .white, logoImage: "well-logo-white"),
        LoginHomeScroll(title: "Don't worry, be healthy", info: "Whether you want to start sleeping better, managing your health needs, or taking your meds, Well is with you every step of the way", image: "homeScrollview1", backgroundColor: .white , textColor: .systemGray, createAccountButtonColor: .systemBlue, signInButtonColor: .systemBlue, logoImage: "well-logo"),
        LoginHomeScroll(title: "Real, live health guidance", info: "Chat with a team of expert Well Guides and nurses. Real people, on-demand to help you reach your goals and take hassle out of your healthcare. Just ask Well", image: "homeScrollview2", backgroundColor: .white, textColor: .systemGray, createAccountButtonColor: .systemBlue, signInButtonColor: .systemBlue, logoImage: "well-logo"),
        LoginHomeScroll(title: "Oh, and real reward", info: "We know it takes effort to take healthy actions - so you'll always be earning rewards to use on thing you care about", image: "homeScrollview3", backgroundColor: .white, textColor: .systemGray, createAccountButtonColor: .systemBlue, signInButtonColor: .systemBlue, logoImage: "well-logo")
    ]
    
    
    func getTitle(_ viewNumber: Int) -> String {
        return views[viewNumber].title
    }
    
    func getInfo(_ viewNumber: Int) -> String {
        return views[viewNumber].info
    }
    
    func getImage(_ viewNumber: Int) -> String {
        return views[viewNumber].image
    }
    
    func getLogoImage(_ viewNumber: Int) -> String {
        return views[viewNumber].logoImage
    }
    
    func getBackgroundColor(_ viewNumber: Int) -> UIColor {
        return views[viewNumber].backgroundColor
    }
    
    func getTextColor(_ viewNumber: Int) -> UIColor {
        return views[viewNumber].textColor
    }
    
    func getBackgroundButtonColor(_ viewNumber: Int) -> UIColor {
        return views[viewNumber].createAccountButtonColor
    }
    
    func getViewsCount() -> Int {
        return self.views.count
    }
    
}
