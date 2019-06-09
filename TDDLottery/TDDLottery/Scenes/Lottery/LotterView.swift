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
        backgroundColor = .white
        stackView.alignment = .center
        stackView.distribution = .equalCentering
        stackView.translatesAutoresizingMaskIntoConstraints = false
        let contstraints = [
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 100)
        ]
        NSLayoutConstraint.activate(contstraints)
    }

}
