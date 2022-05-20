//
//  ViewController.swift
//  VK_Profil_Andrei_Maskal
//
//  Created by Andrei Maskal on 17/05/2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        addHierarchy()
        addConstraints()
    }
    
    private func setupView() {
        view.backgroundColor = .black
    }
    
    //MARK: - imageView
    
    private lazy var iconProfilImageView: UIImageView = {
        let iconImageView = UIImageView()
        let image = UIImage(named: "title_icon")
        let imageHeightWidth: CGFloat = 90
        iconImageView.image = image
        iconImageView.clipsToBounds = true
        iconImageView.layer.cornerRadius = imageHeightWidth / 2
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        return iconImageView
    }()
    
    private lazy var statusImageView: UIImageView = {
        let statusImage = UIImageView()
        statusImage.image = UIImage(named: "icon_phone")
        statusImage.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        return statusImage
    }()
    
    private func setupUIImageView(image: String) -> UIImageView {
        let statusImage = UIImageView()
        statusImage.image = UIImage(named: image)
        return statusImage
    }
    
    private lazy var clipImageView = setupUIImageView(image: "play")
    private lazy var photoImageView = setupUIImageView(image: "photo")
    private lazy var postImageView = setupUIImageView(image: "pencil")
    private lazy var storyImageView = setupUIImageView(image: "camera")
    private lazy var homeImageView = setupUIImageView(image: "house-1")
    private lazy var subscribersImageView = setupUIImageView(image: "radiowaves")
    private lazy var jobImageView = setupUIImageView(image: "bag")
    private lazy var giftImageView = setupUIImageView(image: "sun")
    private lazy var informationImageView = setupUIImageView(image: "information")
   
    private lazy var separatedImageView: UIImageView = {
        let separated = UIImageView()
        separated.backgroundColor = Color.lightGray.color
        separated.translatesAutoresizingMaskIntoConstraints = false
        return separated
    }()

    //MARK: - labels
    
    private lazy var userNameLabel: UILabel = {
        let labelName = UILabel()
        labelName.text = TextPage.name.rawValue
        labelName.font = .systemFont(ofSize: 21, weight: .heavy)
        labelName.textColor = .white
        return labelName
    }()
    
    private lazy var statusLabel: UILabel = {
        let statusLabel = UILabel()
        statusLabel.text = TextPage.online.rawValue
        statusLabel.font = .systemFont(ofSize: 18, weight: .ultraLight)
        statusLabel.textColor = .systemGray4
        return statusLabel
    }()
    
    //MARK: - buttons
    
    private lazy var setupStatusButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(Color.superBlue.color, for: .normal)
        button.setTitle(TextPage.status.rawValue, for: .normal)
        return button
    }()
    
    private lazy var editButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(Color.weith.color, for: .normal)
        button.setTitle(TextPage.edit.rawValue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18)
        button.backgroundColor = Color.gray.color
        let sizeButton = CGSize(width: 200, height: 18)
        button.clipsToBounds = true
        button.layer.cornerRadius = sizeButton.height / 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private func setupButton(titleColor: Color, title: TextPage) -> UIButton {
        let button = UIButton()
        button.setTitleColor(titleColor.color, for: .normal)
        button.setTitle(title.rawValue, for: .normal)
        return button
    }
    
    private lazy var storyButton = setupButton(titleColor: .superBlue, title: .story)
    private lazy var postButton = setupButton(titleColor: .superBlue, title: .post)
    private lazy var photoButton = setupButton(titleColor: .superBlue, title: .photo)
    private lazy var clipButton = setupButton(titleColor: .superBlue, title: .clip)
    private lazy var homeButton = setupButton(titleColor: .grayTwo, title: .city)
    private lazy var subscribersButton = setupButton(titleColor: .grayTwo, title: .subscribers)
    private lazy var jobButton = setupButton(titleColor: .superBlue, title: .job)
    private lazy var giftButton = setupButton(titleColor: .blue, title: .gift)
    private lazy var informationButton = setupButton(titleColor: .weith, title: .information)
        
    //MARK: - stackView
    
    private lazy var userInfoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var statusStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        return stackView
    }()
    
    private func setupMediaStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        return stackView
    }
    
    private lazy var storyStackView = setupMediaStackView()
    private lazy var postInfoStackView = setupMediaStackView()
    private lazy var photoInfoStackView = setupMediaStackView()
    private lazy var clipInfoStackView = setupMediaStackView()
      
    
    private lazy var mediaStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private func setupUserInfoStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 15
        stackView.sizeToFit()
        return stackView
    }
    
    private lazy var homeStackView = setupUserInfoStackView()
    private lazy var subscribersStackView = setupUserInfoStackView()
    private lazy var jobStackView = setupUserInfoStackView()
    private lazy var giftStackView = setupUserInfoStackView()
    private lazy var informationStackView = setupUserInfoStackView()
     
    private lazy var userStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.spacing = 15
        stackView.distribution = .equalCentering
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    //MARK: - constraints
}

extension ViewController {
    private func addHierarchy() {
        view.addSubview(iconProfilImageView)
        view.addSubview(userInfoStackView)
        view.addSubview(editButton)
        view.addSubview(mediaStackView)
        view.addSubview(separatedImageView)
        view.addSubview(userStackView)
    }
    
    private func addConstraints() {
        statusStackView.addArrangedSubview(statusLabel)
        statusStackView.addArrangedSubview(statusImageView)
        
        userInfoStackView.addArrangedSubview(userNameLabel)
        userInfoStackView.addArrangedSubview(setupStatusButton)
        userInfoStackView.addArrangedSubview(statusStackView)
        
        storyStackView.addArrangedSubview(storyImageView)
        storyStackView.addArrangedSubview(storyButton)
        
        postInfoStackView.addArrangedSubview(postImageView)
        postInfoStackView.addArrangedSubview(postButton)
        
        photoInfoStackView.addArrangedSubview(photoImageView)
        photoInfoStackView.addArrangedSubview(photoButton)
        
        clipInfoStackView.addArrangedSubview(clipImageView)
        clipInfoStackView.addArrangedSubview(clipButton)
        
        mediaStackView.addArrangedSubview(storyStackView)
        mediaStackView.addArrangedSubview(postInfoStackView)
        mediaStackView.addArrangedSubview(photoInfoStackView)
        mediaStackView.addArrangedSubview(clipInfoStackView)
        
        homeStackView.addArrangedSubview(homeImageView)
        homeStackView.addArrangedSubview(homeButton)
        
        subscribersStackView.addArrangedSubview(subscribersImageView)
        subscribersStackView.addArrangedSubview(subscribersButton)
        
        jobStackView.addArrangedSubview(jobImageView)
        jobStackView.addArrangedSubview(jobButton)
        
        giftStackView.addArrangedSubview(giftImageView)
        giftStackView.addArrangedSubview(giftButton)
        
        informationStackView.addArrangedSubview(informationImageView)
        informationStackView.addArrangedSubview(informationButton)
        
        userStackView.addArrangedSubview(homeStackView)
        userStackView.addArrangedSubview(subscribersStackView)
        userStackView.addArrangedSubview(jobStackView)
        userStackView.addArrangedSubview(giftStackView)
        userStackView.addArrangedSubview(informationStackView)
        
        NSLayoutConstraint.activate([
            iconProfilImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            iconProfilImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            iconProfilImageView.heightAnchor.constraint(equalToConstant: 90),
            iconProfilImageView.widthAnchor.constraint(equalToConstant: 90)
        ])
        
        NSLayoutConstraint.activate([
            userInfoStackView.topAnchor.constraint(equalTo: iconProfilImageView.topAnchor, constant: 10),
            userInfoStackView.bottomAnchor.constraint(equalTo: iconProfilImageView.bottomAnchor, constant: -10),
            userInfoStackView.leadingAnchor.constraint(equalTo: iconProfilImageView.trailingAnchor, constant: 10),
            userInfoStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            editButton.topAnchor.constraint(equalTo: iconProfilImageView.bottomAnchor, constant: 10),
            editButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            editButton.heightAnchor.constraint(equalToConstant: 40),
            editButton.trailingAnchor.constraint(equalTo:  view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            mediaStackView.topAnchor.constraint(equalTo: editButton.bottomAnchor, constant: 10),
            mediaStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            mediaStackView.heightAnchor.constraint(equalToConstant: 50),
            mediaStackView.trailingAnchor.constraint(equalTo:  editButton.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            separatedImageView.topAnchor.constraint(equalTo: mediaStackView.bottomAnchor, constant: 5),
            separatedImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            separatedImageView.heightAnchor.constraint(equalToConstant: 1),
            separatedImageView.trailingAnchor.constraint(equalTo:  editButton.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            userStackView.topAnchor.constraint(equalTo: separatedImageView.bottomAnchor, constant: 10),
            userStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            userStackView.heightAnchor.constraint(equalToConstant: 150),
            userStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            clipImageView.heightAnchor.constraint(equalToConstant: 20),
            photoImageView.heightAnchor.constraint(equalToConstant: 20),
            postImageView.heightAnchor.constraint(equalToConstant: 20),
            storyImageView.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            homeImageView.heightAnchor.constraint(equalToConstant: 18),
            subscribersImageView.heightAnchor.constraint(equalToConstant: 18),
            subscribersImageView.trailingAnchor.constraint(equalTo: homeImageView.trailingAnchor),
            jobImageView.heightAnchor.constraint(equalToConstant: 18),
            jobImageView.trailingAnchor.constraint(equalTo: homeImageView.trailingAnchor),
            giftImageView.heightAnchor.constraint(equalToConstant: 18),
            giftImageView.trailingAnchor.constraint(equalTo: homeImageView.trailingAnchor),
            informationImageView.heightAnchor.constraint(equalToConstant: 18),
            informationImageView.trailingAnchor.constraint(equalTo: homeImageView.trailingAnchor)
        ])
    }
    
    enum TextPage: String {
        case name = "Андрей Москаль"
        case status = "Установить статус"
        case post = "Запись"
        case photo = "Фото"
        case clip = "Клип"
        case city = "город: Гданьск"
        case online = "online"
        case edit = "Редактировать"
        case story = "История"
        case subscribers = "35 подписчиков"
        case job = "Указать место работы"
        case gift = "Получить подарок >"
        case information = "Подробная информация"
    }
    
    enum Color {
        case superBlue
        case gray
        case weith
        case lightGray
        case grayTwo
        case blue
        
        var color: UIColor {
            switch self {
            case .superBlue:
                return #colorLiteral(red: 0.3703377843, green: 0.3604713082, blue: 0.9021168351, alpha: 1)
            case .gray:
                return #colorLiteral(red: 0.1589625776, green: 0.1689500213, blue: 0.2071579397, alpha: 1)
            case .weith:
                return #colorLiteral(red: 0.8901961446, green: 0.8901961446, blue: 0.8901961446, alpha: 1)
            case .lightGray:
                return #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            case .grayTwo:
                return #colorLiteral(red: 0.5960779786, green: 0.5960789323, blue: 0.6175695062, alpha: 1)
            case .blue:
                return #colorLiteral(red: 0.042927064, green: 0.5177074075, blue: 1, alpha: 1)
            }
        }
    }
}

