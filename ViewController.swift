//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by javier melendrez on 10/11/18.
//  Copyright © 2018 Javier Melendrez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //create an array to hold string of ball name
    //constant because whats in the array never changes
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    //create a int to hold random number
    var randomNum : Int = 0;
    
    @IBOutlet weak var eightBall: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func askButton(_ sender: Any)
    {
        //call the change image function for when button is pressed
        changeImage()
    }
    //create a function for shaking motion
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        //call the function to change motion when phone is shaked
        changeImage()
    }
    //create a function to change the imaage of the eight ball
    func changeImage()
    {
       //first create a random number
        //0-4 because that will be the array index
        randomNum = Int.random(in: 0 ... 4)
        //access eightBall
        //change the eight ball image to the random ball arrayIndex
        
        eightBall.image = UIImage(named: ballArray[randomNum])
    }

}

