//
//  CommentViewController.swift
//  Goals
//
//  Created by Josh Olumese on 7/13/17.
//  Copyright © 2017 Isabella Teng. All rights reserved.
//

import UIKit
import Parse

class CommentViewController: UIViewController {


    @IBOutlet weak var commentTextField: UITextField!
    
    
    
    
//    var update: PFObject! {
//        didSet{
//            self.commentTextField.text = update["comments"] as? String
//            let currentCommentCount = update["commentCount"] as! Int
//        }
//    }
    
    @IBAction func saveComment(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
