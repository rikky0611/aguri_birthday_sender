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
    var dict: [Int: Bool]!
    
    @IBOutlet private var buttons: [UIButton]! {
        
        didSet {
            buttons.forEach({
                
                $0.backgroundColor = UIColor.red
            })
        }
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()
        for i in 1 ... 9 {
            
            dict[i] = false
        }
        
        update()
    }
    
    @IBAction private func tap(sender: UIButton) {
        
        let index: Int = sender.tag
        dict[index] = !dict[index]!
        changeColor(button: buttons[index])
        update()
    }
    
    
    private func changeColor(button: UIButton) {
        
        if button.backgroundColor == UIColor.blue {
            
            button.backgroundColor = UIColor.red
            return
        }
        if button.backgroundColor == UIColor.red {
            
            button.backgroundColor = UIColor.blue
            return
        }
    }
    
    private func update() {
        
        let post = dict as [Int:Bool]
        rootRef.child("test").setValue(post)
        print("更新完了\(post)")
    }
}

