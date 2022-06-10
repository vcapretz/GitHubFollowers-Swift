import UIKit

class FollowersListViewController: UIViewController {
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            switch result {
                case .failure(let error):
                    self.presentGFAlertOnMainThread(
                        title: "Error",
                        message: error.rawValue,
                        buttonTitle: "Ok"
                    )
                case .success(let followers):
                    print("Followers count = \(followers.count)")
                    print(followers)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
