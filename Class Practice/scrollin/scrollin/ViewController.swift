//
//  ViewController.swift
//  scrollin
//
//  Created by Kateryna Tserkus on 8/7/25.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    var imageView: UIImageView!
    var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView(image: UIImage(named: "Bicyclist_image"))
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.white
        scrollView.contentSize = imageView.bounds.size
        scrollView.contentOffset = CGPoint(x:1000, y:400)
        
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
        
        scrollView.delegate = self
        scrollView.minimumZoomScale = 0.1
        scrollView.maximumZoomScale = 4.0
        scrollView.zoomScale = 1.0
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }


}

