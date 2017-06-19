import Foundation

protocol GetMessageObserver {
    func found(message: String)
}

protocol MessageSource {
    func get() -> String
}

struct GetMessage {
    let messageSource: MessageSource
    
    func execute(observer: GetMessageObserver) {
        observer.found(message: messageSource.get())
    }
}
