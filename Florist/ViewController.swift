//
//  ViewController.swift
//  Florist
//
//  Created by Juan Meza on 12/2/17.
//  Copyright © 2017 Tech-IN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var sampleButton: UIButton!
    @IBOutlet weak var infoLabel: UILabel!
    
    // override func viewDidAppear(_ animated: Bool) {
        // Animations
        // Finally, I use the ViewDidAppear to start off new threads to things that would take a long time to execute, like for example doing a webservice call to get extra data for the form above.
    // }
    
    override func viewWillAppear(_ animated: Bool) {
        
       // self.title = "Best Florists"
        
        // I use ViewWillAppear usually just to update the data on the form. So, for the example above, I would use this to actually load the data from my domain into the form. Creation of UIViews is fairly expensive, and you should avoid as much as possible doing that on the ViewWillAppear method
        
        topLabel.text = "Buy from us"
        infoLabel.text = "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas 'Letraset', las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("The views have been loaded into the memory")
        // Do any additional setup after loading the view, typically from a nib.
        // Basically this method is called whenever the view was loaded into memory. So for example, if my view is a form with 3 labels, I would add the labels here; the view will never exist without those forms.
        
        topLabel.textColor = UIColor.red
        // topLabel.text = "Buy from us"
        
        sampleButton.backgroundColor = UIColor.blue
        
        
        
        // UIViews
        let topLabel1 = UILabel(frame: CGRect(x: 10, y: 70, width: 180, height: 50))
        topLabel1.text = "We are the best florist"
        topLabel1.textColor = UIColor.white
        topLabel1.numberOfLines = 2
        topLabel1.textAlignment = NSTextAlignment.center
        topLabel1.backgroundColor = UIColor.blue
        topLabel1.font = UIFont(name: "AvenirNext-Regular", size: 12)
        
        let myImage = UIImageView()
        myImage.frame = CGRect(x: 190, y: 70, width: 60, height: 60)
        myImage.image = UIImage(named: "1")
        myImage.contentMode = UIViewContentMode.scaleAspectFill
        // myImage.center = self.view.center
        myImage.center = CGPoint(x: self.view.frame.width/2, y: 100)
        
        self.view.addSubview(topLabel1)
        self.view.addSubview(myImage)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        print("your app is using too much memory")
    }

    @IBAction func facebookClicked(_ sender: Any) {
        
        print("Facebook button was clicked")
        
        topLabel.text = "Facebook info"
        infoLabel.text = "This is our Facebook information"
    }
    
    
    @IBAction func youtubeClicked(_ sender: Any) {
        
        print("Youtube button was clicked")
        
        topLabel.text = "YouTube account"
        infoLabel.text = "This is our YouTube information"
    }
    
    @IBAction func twitterClicked(_ sender: Any) {
        
        print("Twitter button was clicked")
        
        topLabel.text = "Twitter handle"
        infoLabel.text = "This is out Twitter information"
    }
    
}

