//
//  AnotherScreenViewController.swift
//  Exercise_04
//
//  Created by 白石裕幸 on 2021/08/29.
//

import UIKit

class AnotherScreenViewController: UIViewController {
    private let countUpButton = UIButton(type: .custom).button(backgroundColor: .clear,
                                                               buttonTitle: "+",
                                                               buttonTitleState: .normal,
                                                               titleCollor: .blue,
                                                               titleColorState: .normal,
                                                               fontSize: 20)

    private let clearButton = UIButton(type: .custom).button(backgroundColor: .clear,
                                                             buttonTitle: "Clear",
                                                             buttonTitleState: .normal,
                                                             titleCollor: .blue,
                                                             titleColorState: .normal,
                                                             fontSize: 20)

    private let countLabel = UILabel().label(labelText: "0", textAlignment: .center,
                                             backGroundColor: .clear,
                                             textColor: .black,
                                             fontName: "Helvetica-Bold",
                                             fontSize: 22)

    private var count = 0

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setUpLayout()
    }

    @objc
    func tappedAction(sender: UIButton) {
        switch sender {
        case countUpButton:
            count += 1
            countLabel.text = String(count)
        case clearButton:
            count = 0
            countLabel.text = String(count)
        default:
            countLabel.text = "0"
        }
    }

    private func setUpLayout() {
        countUpButton.addTarget(self, action: #selector(tappedAction(sender:)), for: .touchUpInside)
        clearButton.addTarget(self, action: #selector(tappedAction(sender:)), for: .touchUpInside)
        let stackView = UIStackView(arrangedSubviews: [countLabel, countUpButton, clearButton])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        view.addSubview(stackView)
        stackView.arrangedSubviews.forEach { view.addSubview($0) }

        [stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
         stackView.leftAnchor.constraint(equalTo: view.leftAnchor),
         stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
         stackView.rightAnchor.constraint(equalTo: view.rightAnchor)].forEach { $0.isActive = true}

        stackView.viewAnchor(top: view.topAnchor,
                             left: view.leftAnchor,
                             right: view.rightAnchor,
                             centerY: view.centerYAnchor)

        countLabel.viewAnchor(top: stackView.topAnchor,
                              left: stackView.leftAnchor,
                              height: 40, width: 50,
                              topPadding: 40,
                              leftPadding: 30)

        countUpButton.viewAnchor(top: countLabel.bottomAnchor,
                                 left: stackView.leftAnchor,
                                 height: 40, width: 50,
                                 topPadding: 40,
                                 leftPadding: 30)

        clearButton.viewAnchor(top: countUpButton.bottomAnchor,
                               left: stackView.leftAnchor,
                               height: 40, width: 50,
                               topPadding: 40,
                               leftPadding: 30)
    }
}
