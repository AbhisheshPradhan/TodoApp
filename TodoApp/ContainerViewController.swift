//
//  ContainerViewController.swift
//  TodoApp
//
//  Created by Abhishesh Pradhan on 28/4/18.
//  Copyright © 2018 Abhishesh Pradhan. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var connectionButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    
    var todoTableViewController: ToDoTableViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addButton.layer.cornerRadius = addButton.frame.size.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TodoVC" {
            todoTableViewController = (segue.destination as! UINavigationController).childViewControllers.first as! ToDoTableViewController
            todoTableViewController.connectionButtonReference = connectionButton
        }
    }
    
    @IBAction func addNewTodoItem(_ sender: UIButton) {
        todoTableViewController.addNewTodo()
    }
    
    @IBAction func triggerConnection(_ sender: UIButton) {
        todoTableViewController.showConnectivityAction()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
