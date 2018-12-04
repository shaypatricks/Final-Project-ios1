//
//  Historical.swift
//  Final Project
//
//  Created by Steffen Hayes on 12/4/18.
//  Copyright © 2018 SteffenHayes. All rights reserved.
//
import UIKit
 

class Historical: UIViewController {
    var buttonMarker: Int = 1

    struct history {
        var Title: String
        var Image: String
        var Descritpion: String
    }
    @IBOutlet weak var Portrait: UIImageView!
    @IBOutlet weak var Biography: UITextView!
    @IBOutlet weak var STitle: UILabel!
    
    var Roma = history(Title: "", Image: "", Descritpion: "")
    
    func entry(marker: Int) -> history{
        
        let dicRoot = NSDictionary.init(contentsOfFile: (Bundle.main.path(forResource: "History", ofType: "plist"))!)
        let titleArrayFromDic: NSArray = NSArray.init(object: dicRoot!.object(forKey: String(marker)) as Any)
        let titleValueArray = titleArrayFromDic.object(at: 0) as! NSArray
        
        let holdRoma = history(Title: titleValueArray[0] as! String, Image: titleValueArray[1] as! String, Descritpion: titleValueArray[2] as! String)
        
        return holdRoma
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        Roma = entry(marker: buttonMarker)
        self.Portrait.image = UIImage(named: Roma.Image)
        
        self.Biography.text = Roma.Descritpion
        
        self.STitle.text = Roma.Title
    }

        // Do any additional setup after loading the view, typically from a nib.
        
    }

