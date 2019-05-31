import UIKit

class LotteryViewController: UIViewController {

    init(viewModel: LotteryViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Privates

    private let viewModel: LotteryViewModelType

}

