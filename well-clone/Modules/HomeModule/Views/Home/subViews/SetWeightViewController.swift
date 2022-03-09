//
//  SetWeightViewController.swift
//  well-clone
//
//  Created by Diego on 8/03/22.
//

import UIKit

class SetWeightViewController: UIViewController {

    let segueIdentifier = "goToWeightView"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func closePressed(_ sender: Any) {
        print("closed")
        navigationController?.popViewController(animated: true)
    }
    
}
