//
//  UIImageView.swift
//  iOS-Boilerplate
//
//  Created by Luis Garcia on 12/13/17.
//

import UIKit

extension UIImageView {
    
    public func image(fromUrl urlString: String?, placeHolderImage: UIImage?) {
        guard let imageString = urlString, let url = URL(string: imageString) else {
            DispatchQueue.main.async {
                self.image = placeHolderImage
            }
            return
        }
        
        let retrievalTask = URLSession.shared.dataTask(with: url) {
            data, response, error in
            if let response = data {
                DispatchQueue.main.async {
                    self.image = UIImage(data: response) ?? placeHolderImage
                }
            } else {
                DispatchQueue.main.async {
                    self.image = placeHolderImage
                }
            }
        }
        retrievalTask.resume()
    }
}
