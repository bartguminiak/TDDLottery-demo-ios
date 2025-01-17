@testable import TDDLottery
import UIKit

class CircleViewModelStub: CircleViewModelType {

    init(number: Int = 0) {
        self.numberSpy = number
    }

    // MARK: - CircleViewModelType

    var color: UIColor = .red
    var title: String = ""

    // MARK: - Spies

    let numberSpy: Int

}
