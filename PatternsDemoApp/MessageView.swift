import UIKit

class MessageView: UIView {
    @IBOutlet weak private var label: UILabel!
    
    func updateMessageLabel(with text: String) {
        Config.onMainQueue {
            self.label.text = text
        }
    }
}
