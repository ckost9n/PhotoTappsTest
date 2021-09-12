//
//  PhotoViewController.swift
//  PhotoTappsTest
//
//  Created by Konstantin on 12.09.2021.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?

    @IBOutlet var photoImageVIew: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageVIew.image = image
    }
    
    @IBAction func shareAction(_ sender: UIButton) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Успешно")
            } else {
                print("Не успешно!")
            }
        }
        
        present(shareController, animated: true, completion: nil)
        
    }
    
    

}
