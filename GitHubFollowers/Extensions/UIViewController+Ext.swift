//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Vitor Capretz on 09/06/22.
//

import UIKit
import SafariServices

extension UIViewController {
    func presentGFAlert(title: String, message: String, buttonTitle: String) {
        let alertVC = GFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
        
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        
        present(alertVC, animated: true)
    }
    
    func presentDefaultAlert() {
        let alertVC = GFAlertViewController(
            title: "Something went wrong",
            message: "We were unable to complete your request at this time. Please try again.",
            buttonTitle: "Ok"
        )
        
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        
        present(alertVC, animated: true)
    }
    
    func presentSafariViewController(with url: URL) {
        let safariViewController = SFSafariViewController(url: url)
        safariViewController.preferredControlTintColor = .systemGreen
        present(safariViewController, animated: true)
    }
}
