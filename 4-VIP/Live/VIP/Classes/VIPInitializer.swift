import Foundation

public final class VIPInitializer {
    
    @discardableResult public class func helloWorld() -> String {
        let message = Localization.Feature.Example.helloWorld
        print(message)
        return message
    }
    
}