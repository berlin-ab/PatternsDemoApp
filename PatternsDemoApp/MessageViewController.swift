import UIKit

class MessageViewController: UIViewController {
    var messageView: MessageView { return view as! MessageView }
    var getMessage = Config.getMessage
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        getMessage.execute(observer: self)
    }
}

extension MessageViewController: GetMessageObserver {
    func found(message: String) {
        messageView.updateMessageLabel(with: message)
    }
}
