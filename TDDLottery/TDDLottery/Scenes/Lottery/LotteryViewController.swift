import UIKit

class LotteryViewController: UIViewController {

    init(viewModel: LotteryViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    override func loadView() {
        view = LotteryView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSubviews()
    }

    // MARK: - Privates

    private let viewModel: LotteryViewModelType
    private var lotteryView: LotteryView! {
        return view as? LotteryView
    }

    private func configureSubviews() {
        viewModel.circleViewModels = { [unowned self] viewModels in
            let labels = viewModels.map { viewModel -> UILabel in
                let label = UILabel()
                label.text = viewModel.title
                label.backgroundColor = viewModel.color
                return label
            }
            labels.forEach(self.lotteryView.stackView.addArrangedSubview)
        }
        viewModel.viewDidLoad()
    }

}
