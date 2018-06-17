//
//  ViewController.swift
//  Camera
//
//  Created by Student on 6/16/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var previewView: UIView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openCameraButton(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//
//
//        let captureDevice = AVCaptureDevice.default(for: AVMediaType.video)
//
//        do {
//            input = try AVCaptureDeviceInput(device: captureDevice!)
//        } catch {
//            print(error)
//        }
//
//        captureSession = AVCaptureSession()
//        captureSession?.addInput(input!)
//
//        videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession!)
//        videoPreviewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
//        videoPreviewLayer?.frame = view.layer.bounds
//        previewView.layer.addSublayer(videoPreviewLayer!)
//
//        captureSession?.startRunning()
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

}

