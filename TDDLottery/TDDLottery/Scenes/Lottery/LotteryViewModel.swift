protocol LotteryViewModelType: class {
    func viewDidLoad()
    var circleViewModels: (([CircleViewModelType]) -> Void)? { get set }
}

class LotteryViewModel: LotteryViewModelType {

    // MARK: - LotteryViewModelType

    func viewDidLoad() {
        //
    }

    var circleViewModels: (([CircleViewModelType]) -> Void)?

}
