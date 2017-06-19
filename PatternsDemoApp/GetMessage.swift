import Foundation

protocol GetMessageObserver {
    func found(message: String)
}

class GetMessage {
    func execute(observer: GetMessageObserver) {
        observer.found(message: "Hello!")
    }
}
