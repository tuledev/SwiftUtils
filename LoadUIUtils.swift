import UIKit

class LoadUIUtils {
    static func load<T>(viewControlerType: T.Type,
                        from storyboardId: String? = nil) -> T?
    {
        if let storyboardName = storyboardId {
            let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
            return storyboard.instantiateViewController(withIdentifier: String(describing:T.self)) as? T
        } else {
            let view = Bundle.main.loadNibNamed(String(describing:T.self),
                                                owner: nil,
                                                options: nil)?.first
            return view as? T
        }
    }
}
