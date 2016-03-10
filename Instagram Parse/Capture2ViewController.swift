//
//  Capture2ViewController.swift
//  Instagram Parse
//
//  Created by KaKin Chiu on 3/8/16.
//  Copyright © 2016 KaKinChiu. All rights reserved.
//

import UIKit

class Capture2ViewController: UIViewController, UIImagePickerControllerDelegate,  UINavigationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        //imageTapped()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        imageTapped()
    }
    
    //Step 1: Picking a Picture from the Camera Roll
    func imageTapped()
    {
        let vc = UIImagePickerController()
        vc.delegate = self
        vc.allowsEditing = true
        vc.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        self.presentViewController(vc, animated: true, completion: nil)
        print("im here")
    }
    
    //Step 2: Implement the delegate
    func imagePickerController(picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [String : AnyObject]) {
          //  let originalImage = info[UIImagePickerControllerOriginalImage] as! UIImage
           // let editedImage = info[UIImagePickerControllerEditedImage] as! UIImage
            //profileImageView.image = editedImage
            dismissViewControllerAnimated(true, completion: { () -> Void in
            })
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        print("diu")
        self.tabBarController?.selectedIndex  = 0
        dismissViewControllerAnimated(true, completion: nil)
    }

}
