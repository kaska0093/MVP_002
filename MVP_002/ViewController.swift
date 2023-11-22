//
//  ViewController.swift
//  MVP_002
//
//  Created by Nikita Shestakov on 16.11.2023.
//

import UIKit

class ViewController: UIViewController {
    // MARK: INOutlet
    @IBOutlet weak var greetingLabel: UILabel!
    
    // для общения View -> Presenter (не на прямую, через протокол)
    var presenter: MainViewPresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: IBAction
    @IBAction func didTapButtonAction(_ sender: Any) {
        self.presenter.showGreeting()
    }
}

extension ViewController: MainViewProtocol {     //binding / связывание со View

    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
    }
    
}
