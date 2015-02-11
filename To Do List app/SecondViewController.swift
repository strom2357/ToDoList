//
//  SecondViewController.swift
//  To Do List app
//
//  Created by Erik Strom on 2/10/15.
//  Copyright (c) 2015 Erik_Strom. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController {

   @IBOutlet weak var item: UITextField!

   @IBAction func addItem(sender: AnyObject) {

      toDoList.append(item.text)

      item.text = ""

      NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")

   }

   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view, typically from a nib.
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }

   override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {

      self.view.endEditing(true)

   }

   func textFieldShouldReturn(textField: UITextField!) -> Bool {

      item.resignFirstResponder()
      return true

   }

}

