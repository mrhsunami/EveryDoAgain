//
//  DetailViewController.swift
//  Every.Do Again
//
//  Created by Nathan Hsu on 2018-03-21.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var taskTitleLabel: UILabel!
    
    @IBOutlet weak var priorityLabel: UILabel!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel, let description = detail.todoDescription {
                label.text = description
            }
            if let label = taskTitleLabel, let task = detail.title {
                label.text = task
            }
            if let label = priorityLabel {
                let priority = String(detail.priorityNumber)
                label.text = priority
            }
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: ToDo? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

