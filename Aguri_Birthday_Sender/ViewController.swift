//
//  ViewController.swift
//  Aguri_Birthday_Sender
//
//  Created by 荒川陸 on 2016/11/22.
//  Copyright © 2016年 Riku Arakawa. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    let rootRef = FIRDatabase.database().reference()
    var dict: [String: Bool]!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        dict = ["1": false,
                "2": false,
                "3": false,
                "4": false,
                "5": false,
                "6": false,
                "7": false,
                "8": false,
                "9": false]
        button1.backgroundColor = UIColor.red
        button2.backgroundColor = UIColor.red
        button3.backgroundColor = UIColor.red
        button4.backgroundColor = UIColor.red
        button5.backgroundColor = UIColor.red
        button6.backgroundColor = UIColor.red
        button7.backgroundColor = UIColor.red
        button8.backgroundColor = UIColor.red
        button9.backgroundColor = UIColor.red
        
        update()
    }
    
    @IBAction func tap1() {
        dict["1"] = !dict["1"]!
        changeColor(button: button1)
        update()
    }
    
    @IBAction func tap2() {
        dict["2"] = !dict["2"]!
        changeColor(button: button2)
        update()
    }
    
    @IBAction func tap3() {
        dict["3"] = !dict["3"]!
        changeColor(button: button3)
        update()
    }
    
    @IBAction func tap4() {
        dict["4"] = !dict["4"]!
        changeColor(button: button4)
        update()
    }
    
    @IBAction func tap5() {
        dict["5"] = !dict["5"]!
        changeColor(button: button5)
        update()
    }
    
    @IBAction func tap6() {
        dict["6"] = !dict["6"]!
        changeColor(button: button6)
        update()
    }
    
    @IBAction func tap7() {
        dict["7"] = !dict["7"]!
        changeColor(button: button7)
        update()
    }
    
    @IBAction func tap8() {
        dict["8"] = !dict["8"]!
        changeColor(button: button8)
        update()
    }
    
    @IBAction func tap9() {
        dict["9"] = !dict["9"]!
        changeColor(button: button9)
        update()
    }
    
    
    fileprivate func changeColor(button: UIButton) {
        if button.backgroundColor == UIColor.blue {
            button.backgroundColor = UIColor.red
            return
        }
        if button.backgroundColor == UIColor.red {
            button.backgroundColor = UIColor.blue
            return
        }
    }
    
    fileprivate func update() {
        let post = dict as [String:Bool]
        rootRef.child("test").setValue(post)
        print("更新完了\(post)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

