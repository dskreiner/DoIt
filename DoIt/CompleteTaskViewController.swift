//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Scott Kreiner on 2/12/17.
//  Copyright © 2017 Scott Kreiner. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task : Task? = nil
    
    @IBOutlet weak var taskLabel: UILabel!

  
    override func viewDidLoad() {
        super.viewDidLoad()

        if task!.important {
            taskLabel.text = "❗️\(task!.name!)"
        } else {
            taskLabel.text = task!.name!
        }
    }

    @IBAction func completeTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
    }


}
