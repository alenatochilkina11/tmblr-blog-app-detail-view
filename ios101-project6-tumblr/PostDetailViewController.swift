//
//  PostDetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Alena Tochilkina on 23.10.2023.
//

import UIKit
import Nuke

class PostDetailViewController: UIViewController {

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postDetailDescription: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.postDetailDescription.text = post.caption.trimHTMLTags()
        self.postDetailDescription.isEditable = false
        
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            
            Nuke.loadImage(with: url, into: self.postImage)
        }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
