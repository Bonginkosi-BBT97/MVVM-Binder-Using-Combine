//
//  HomeViewController.swift
//  DesignPattern
//
//  Created by Emmanuel Okwara on 11/12/2021.
//

import UIKit
import Combine

class HomeViewController: UIViewController {
    private let viewModel = HomeViewController()
    private var cancellables: Set<AnyCancellable> = []
    
    @IBOutlet weak var welcomeLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBinders()
        viewModel.getLoggedInUser()
        // Do any additional setup after loading the view.
        
    }
    
    
    private func setupBinders() {
        viewModel.$welcomeMessage.sink{ [weak self] message in
            self?.welcomeLbl.text = message
            
        }.store(in: &cancellables)
     }
  }

