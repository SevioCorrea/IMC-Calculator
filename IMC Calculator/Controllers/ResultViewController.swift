//
//  ResultViewController.swift
//  IMC Calculator
//
//  Created by Sévio on 08/10/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    var imcValue: String?

    @IBOutlet weak var imcLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        imcLabel.text = imcValue
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
