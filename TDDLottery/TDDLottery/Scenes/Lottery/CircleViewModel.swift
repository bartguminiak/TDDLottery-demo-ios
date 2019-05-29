import UIKit

protocol CircleViewModelType {
    var title: String { get }
    var color: UIColor { get }
}

class CircleViewModel: CircleViewModelType {

    init(number: Int) {
        self.number = number
    }

    // MARK: - CircleViewModelType

    let title = ""
    let color = UIColor.white

    // MARK: - Privates

    private let number: Int

}
