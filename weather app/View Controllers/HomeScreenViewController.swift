//
//  HomeScreenViewController.swift
//  weather app
//
//  Created by Keano Bellmore on 4/30/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var weatherEmoji: UILabel!
    @IBOutlet weak var currentTemp: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
