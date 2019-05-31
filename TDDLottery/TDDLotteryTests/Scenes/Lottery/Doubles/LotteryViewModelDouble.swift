@testable import TDDLottery

class LotteryViewModelDouble: LotteryViewModelType {

    // MARK: - LotteryViewModelType

    func viewDidLoad() {
        didCallViewDidLoad = true
    }

    var circleViewModels: (([CircleViewModelType]) -> Void)?

    // MARK: - Doubles

    private(set) var didCallViewDidLoad = false

}
