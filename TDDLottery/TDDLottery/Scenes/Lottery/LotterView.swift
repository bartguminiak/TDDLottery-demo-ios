import UIKit

class LotteryView: UIView {

    init() {
        super.init(frame: .zero)
        addSubviews()
        setupSubviews()
    }

    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    let stackView = UIStackView(frame: .zero)

    // MARK: - Privates

    private func addSubviews() {
        addSubview(stackView)
    }

    private func setupSubviews() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }

}
