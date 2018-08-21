//
//  SampleViewController.swift
//  Florist
//
//  Created by Juan Meza on 12/7/17.
//  Copyright © 2017 Tech-IN. All rights reserved.
//

import UIKit

class SampleViewController: UIViewController {

    @IBOutlet weak var orderButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Test File"
        orderButton.backgroundColor = UIColor.blue
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
