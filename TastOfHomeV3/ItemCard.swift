//
//  ItemCard.swift
//  TastOfHomeV3
//
//  Created by Fan Chen on 6/9/18.
//  Copyright © 2018 Fan Chen. All rights reserved.
//

import UIKit
import SDWebImage

class ItemCard: UITableViewCell {
  
  init(imageURL: URL?) {
    self.imageURL = imageURL
    super.init(style: UITableViewCellStyle.default, reuseIdentifier: "ItemCard")
    setUpViews()
    setUpConstraints()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private let containerView = UIView()
  private let verticalStackView = UIStackView()
  private let horizontalStackView = UIStackView()
  private let heroImageView = UIImageView()
  private let shareButton = UIButton()
  private let viewInSafariButton = UIButton()
  
  private let imageURL: URL?
  
  private static let buttonHeight: CGFloat = 50
  private static let imageHeight: CGFloat = 300
  
  static var cardHeight: CGFloat {
    return buttonHeight + imageHeight
  }
  
  func setUpViews() {
    setUpContentView()
    setUpVerticalStackView()
    setUpImageView()
    setUpHorizontalStackView()
    setUpShareButton()
    setUpViewInSafariButton()
  }
  
  func setUpContentView() {
    contentView.layoutMargins = UIEdgeInsets(top: 8, left: 0, bottom: 8, right: 0)
 }
  
  func setUpVerticalStackView() {
    verticalStackView.translatesAutoresizingMaskIntoConstraints = false
    verticalStackView.axis = .vertical
    contentView.addSubview(verticalStackView)
  }
  
  func setUpImageView() {
    heroImageView.translatesAutoresizingMaskIntoConstraints = false
    heroImageView.sd_setImage(with: imageURL)
    heroImageView.clipsToBounds = true
    heroImageView.contentMode = .scaleAspectFill
    verticalStackView.addArrangedSubview(heroImageView)
  }
  
  func setUpHorizontalStackView() {
    horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
    horizontalStackView.axis = .horizontal
    horizontalStackView.distribution = .fillEqually
    verticalStackView.addArrangedSubview(horizontalStackView)
  }
  
  func setUpShareButton() {
    shareButton.translatesAutoresizingMaskIntoConstraints = false
    shareButton.layer.borderWidth = 1
    shareButton.layer.borderColor = UIColor.gray.cgColor
    shareButton.setTitle("Share", for: .normal)
    shareButton.setTitleColor(.gray, for: .normal)
    horizontalStackView.addArrangedSubview(shareButton)
  }
  
  func setUpViewInSafariButton() {
    viewInSafariButton.translatesAutoresizingMaskIntoConstraints = false
    viewInSafariButton.layer.borderWidth = 1
    viewInSafariButton.layer.borderColor = UIColor.gray.cgColor
    viewInSafariButton.setTitle("View in safari", for: .normal)
    viewInSafariButton.setTitleColor(.gray, for: .normal)
    horizontalStackView.addArrangedSubview(viewInSafariButton)
  }
  
  func setUpConstraints() {
    setUpContainerViewConstraints()
    setUpVerticalStackViewConstraints()
    setUpHeroImageViewConstraints()
    setUpShareButtonConstraints()
    setUpViewInSafariButtonConstraints()
  }
  
  func setUpContainerViewConstraints() {
    containerView.backgroundColor = .red
    containerView.heightAnchor.constraint(equalToConstant: ItemCard.cardHeight).isActive = true
  }
  
  func setUpVerticalStackViewConstraints() {
    verticalStackView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor).isActive = true
    verticalStackView.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor).isActive = true
    verticalStackView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor).isActive = true
    verticalStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
  }
  
  func setUpHeroImageViewConstraints() {
    heroImageView.heightAnchor.constraint(equalToConstant: ItemCard.imageHeight).isActive = true
  }
  
  func setUpShareButtonConstraints() {
    shareButton.heightAnchor.constraint(equalToConstant: ItemCard.buttonHeight).isActive = true
  }
  
  func setUpViewInSafariButtonConstraints() {
    viewInSafariButton.heightAnchor.constraint(equalToConstant: ItemCard.buttonHeight).isActive = true
  }
  
}
