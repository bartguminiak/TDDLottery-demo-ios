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
        viewModel.todayTitle = { [unowned self] title in
            self.lotteryView.titleLabel.text = title
        }
        viewModel.circleViewModels = { [unowned self] viewModels in
            self.lotteryView.stackView.subviews.forEach(self.lotteryView.stackView.removeArrangedSubview)
            let labels = viewModels.map(self.createLabel)
            labels.forEach(self.lotteryView.stackView.addArrangedSubview)
            labels.forEach(self.setupSizeConstraints)
        }
        viewModel.viewDidLoad()
    }

    private func createLabel(with viewModel: CircleViewModelType) -> UILabel {
        let label = UILabel()
        label.textColor = .white
        label.text = viewModel.title
        label.backgroundColor = viewModel.color
        label.textAlignment = .center
        label.clipsToBounds = true
        label.layer.cornerRadius = 30
        return label
    }

    private func setupSizeConstraints(_ view: UILabel) {
        view.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            view.heightAnchor.constraint(equalToConstant: 60),
            view.widthAnchor.constraint(equalToConstant: 60)
        ]
        NSLayoutConstraint.activate(constraints)
    }

}
