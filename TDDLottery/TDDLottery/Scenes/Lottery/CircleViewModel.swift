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

    var title: String {
        return "\(number)"
    }

    var color: UIColor {
        switch number {
        case 0:
            return .green
        case let number where number % 2 == 0:
            return .red
        default:
            return .black
        }
    }

    // MARK: - Privates

    private let number: Int

}
