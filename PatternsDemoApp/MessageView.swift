import UIKit

class MessageView: UIView {
    @IBOutlet weak private var label: UILabel!
    
    func updateMessageLabel(with text: String) {
        label.text = text
    }
}
