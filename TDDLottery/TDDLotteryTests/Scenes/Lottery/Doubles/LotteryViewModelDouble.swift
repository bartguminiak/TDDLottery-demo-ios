@testable import TDDLottery

class LotteryViewModelDouble: LotteryViewModelType {

    // MARK: - LotteryViewModelType

    func viewDidLoad() {
        didCallViewDidLoad = true
    }

    var todayTitle: ((String) -> Void)?

    var circleViewModels: (([CircleViewModelType]) -> Void)?

    // MARK: - Doubles

    private(set) var didCallViewDidLoad = false

}
