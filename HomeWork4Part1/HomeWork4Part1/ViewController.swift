//
//  ViewController.swift
//  HomeWork4Part1
//
//  Created by rendi on 02.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wellcomeLabel: UILabel!
    @IBOutlet weak var changeLabelBtn: UIButton!
    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    func hideLoader() {
        loader.stopAnimating();
        loader.isHidden = true;
    }
    
    func showLoader() {
        loader.isHidden = false;
        loader.startAnimating();
        
        let timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) {
            timer in self.hideLoader();
        }

        // Run the timer on the current run loop
        RunLoop.current.add(timer, forMode: .common)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        wellcomeLabel.text = "Wellcome friend!";
        showLoader();
    }

    
    @IBAction func changeLabelBtnAction(_ sender: UIButton) {
        wellcomeLabel.text = "Keep coding";
        wellcomeLabel.textColor = .cyan;
        showLoader();
    }
}

