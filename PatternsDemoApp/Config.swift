import Foundation

struct InfoBundleMessageSource: MessageSource {
    let message: String
    
    func get() -> String {
        return message
    }
}


class Config {
    static let infoDictionary = Bundle.main.infoDictionary ?? [:]
    static let infoBundleMessageSource = InfoBundleMessageSource(message: infoDictionary["MESSAGE"] as? String ?? "failed.")
    static var getMessage = GetMessage(messageSource: infoBundleMessageSource)
    
    static var onMainQueue: (@escaping () -> ()) -> () = { action in
        DispatchQueue.main.async {
            action()
        }
    }
}
