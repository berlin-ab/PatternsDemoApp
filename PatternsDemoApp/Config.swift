import Foundation

class Config {
    static var getMessage = GetMessage()
    
    static var onMainQueue: (@escaping () -> ()) -> () = { action in
        DispatchQueue.main.async {
            action()
        }
    }
}
