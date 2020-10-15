//
//  ViewController.swift
//  catchTheKenny
//
//  Created by Kevin Landry on 6/16/20.
//  Copyright © 2020 Kevin Landry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var kenny1: UIImageView!
    @IBOutlet weak var kenny2: UIImageView!
    @IBOutlet weak var kenny3: UIImageView!
    @IBOutlet weak var kenny4: UIImageView!
    @IBOutlet weak var kenny5: UIImageView!
    @IBOutlet weak var kenny6: UIImageView!
    
    var timer = Timer()
    var counter = 0
    var isKenny = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        kenny1.isUserInteractionEnabled = true
        kenny2.isUserInteractionEnabled = true
        kenny3.isUserInteractionEnabled = true
        kenny4.isUserInteractionEnabled = true
        kenny5.isUserInteractionEnabled = true
        kenny6.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        kenny1.addGestureRecognizer(gestureRecognizer)
        kenny2.addGestureRecognizer(gestureRecognizer)
        kenny3.addGestureRecognizer(gestureRecognizer)
        kenny4.addGestureRecognizer(gestureRecognizer)
        kenny5.addGestureRecognizer(gestureRecognizer)
        kenny6.addGestureRecognizer(gestureRecognizer)
        
        // Do any additional setup after loading the view.
    }
    
    @objc func changePic(){
        if isKenny == true {
            kenny1.image = UIImage(named:"blanklogo")
            isKenny = false
            
        }
    }
    override func viewDidAppear( _ animated: Bool)
    
    
    
    {
            
            counter = 10
            timeLabel.text = "Time: \(counter)"
            // time interval is how long to keep it on, selector is self bc thats where we are writing the function below, not taking any user info, yes it repeats
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
            }
        @objc func timerFunction() {
            timeLabel.text = "Time: \(counter)"
            // same as counter = counter - 1
            counter -= 1
            
            if counter == 0 {
                //keeps timer from going on
                makeAlert(titleInput: "ayo STOP!", messageInput: "you done")
                counter = 10
                
            }
            
        
        }
            
            func makeAlert(titleInput: String, messageInput: String){
            let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
             self.present(alert, animated: true, completion: nil)
            
        }
        
    }



