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
    
    private lazy var storyImageView: UIImageView = {
        let statusImage = UIImageView()
        statusImage.image = UIImage(named: "camera")
        return statusImage
    }()
    
    private lazy var postImageView: UIImageView = {
        let statusImage = UIImageView()
        statusImage.image = UIImage(named: "pencil")
        return statusImage
    }()
    
    private lazy var photoImageView: UIImageView = {
        let statusImage = UIImageView()
        statusImage.image = UIImage(named: "photo")
        return statusImage
    }()
    
    private lazy var clipImageView: UIImageView = {
        let statusImage = UIImageView()
        statusImage.image = UIImage(named: "play")
        return statusImage
    }()
    
    private lazy var separatedImageView: UIImageView = {
        let separated = UIImageView()
        separated.backgroundColor = Color.lightGray.color
        separated.translatesAutoresizingMaskIntoConstraints = false
        return separated
    }()
    
    private lazy var homeImageView: UIImageView = {
        let statusImage = UIImageView()
        statusImage.image = UIImage(named: "house-1")
        return statusImage
    }()
    
    private lazy var subscribersImageView: UIImageView = {
        let statusImage = UIImageView()
        statusImage.image = UIImage(named: "radiowaves")
        return statusImage
    }()
    
    private lazy var jobImageView: UIImageView = {
        let statusImage = UIImageView()
        statusImage.image = UIImage(named: "bag")
        return statusImage
    }()
    
    private lazy var giftImageView: UIImageView = {
        let statusImage = UIImageView()
        statusImage.image = UIImage(named: "sun")
        return statusImage
    }()
    
    private lazy var informationImageView: UIImageView = {
        let statusImage = UIImageView()
        statusImage.image = UIImage(named: "information")
        return statusImage
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
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.backgroundColor = Color.gray.color
        let sizeButton = CGSize(width: 200, height: 20)
        button.clipsToBounds = true
        button.layer.cornerRadius = sizeButton.height / 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var storyButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(Color.superBlue.color, for: .normal)
        button.setTitle(TextPage.story.rawValue, for: .normal)
        return button
    }()
    
    private lazy var postButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(Color.superBlue.color, for: .normal)
        button.setTitle(TextPage.post.rawValue, for: .normal)
        return button
    }()
    
    private lazy var photoButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(Color.superBlue.color, for: .normal)
        button.setTitle(TextPage.photo.rawValue, for: .normal)
        return button
    }()
    
    private lazy var clipButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(Color.superBlue.color, for: .normal)
        button.setTitle(TextPage.clip.rawValue, for: .normal)
        return button
    }()
    
    private lazy var homeButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(Color.grayTwo.color, for: .normal)
        button.setTitle(TextPage.city.rawValue, for: .normal)
        return button
    }()
    
    private lazy var subscribersButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(Color.grayTwo.color, for: .normal)
        button.setTitle(TextPage.subscribers.rawValue, for: .normal)
        return button
    }()
    
    private lazy var jobButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(Color.superBlue.color, for: .normal)
        button.setTitle(TextPage.job.rawValue, for: .normal)
        return button
    }()
    
    private lazy var giftButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(Color.blue.color, for: .normal)
        button.setTitle(TextPage.gift.rawValue, for: .normal)
        return button
    }()
    
    private lazy var informationButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(Color.weith.color, for: .normal)
        button.setTitle(TextPage.information.rawValue, for: .normal)
        return button
    }()
    
    
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
    
    private lazy var storyStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    private lazy var postInfoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    private lazy var photoInfoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    private lazy var clipInfoStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    private lazy var mediaStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var homeStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 14
        stackView.sizeToFit()
        return stackView
    }()
    
    private lazy var subscribersStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 20
        return stackView
    }()
    
    private lazy var jobStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 19
        return stackView
    }()
    
    private lazy var giftStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 15
        return stackView
    }()
    
    private lazy var informationStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 18
        return stackView
    }()
    
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
    private func addConstraints() {
        view.addSubview(iconProfilImageView)
        view.addSubview(userInfoStackView)
        view.addSubview(editButton)
        view.addSubview(mediaStackView)
        view.addSubview(separatedImageView)
        view.addSubview(userStackView)
        
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
        
        iconProfilImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        iconProfilImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        iconProfilImageView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        iconProfilImageView.widthAnchor.constraint(equalToConstant: 90).isActive = true
        
        userInfoStackView.topAnchor.constraint(equalTo: iconProfilImageView.topAnchor, constant: 10).isActive = true
        userInfoStackView.bottomAnchor.constraint(equalTo: iconProfilImageView.bottomAnchor, constant: -10).isActive = true
        userInfoStackView.leadingAnchor.constraint(equalTo: iconProfilImageView.trailingAnchor, constant: 10).isActive = true
        userInfoStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 20).isActive = true
        
        editButton.topAnchor.constraint(equalTo: iconProfilImageView.bottomAnchor, constant: 10).isActive = true
        editButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        editButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        editButton.trailingAnchor.constraint(equalTo:  view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        
        mediaStackView.topAnchor.constraint(equalTo: editButton.bottomAnchor, constant: 10).isActive = true
        mediaStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        mediaStackView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        mediaStackView.trailingAnchor.constraint(equalTo:  editButton.trailingAnchor).isActive = true
        
        
        separatedImageView.topAnchor.constraint(equalTo: mediaStackView.bottomAnchor, constant: 10).isActive = true
        separatedImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        separatedImageView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separatedImageView.trailingAnchor.constraint(equalTo:  editButton.trailingAnchor).isActive = true
        
        userStackView.topAnchor.constraint(equalTo: separatedImageView.bottomAnchor, constant: 10).isActive = true
        userStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        userStackView.heightAnchor.constraint(equalToConstant: 145).isActive = true
        userStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 20).isActive = true
        
    }
    
    enum TextPage: String {
        case name = "Андрей Москаль"
        case status = "Установить статус"
        case post = "Запись"
        case photo = "Фото"
        case clip = "Клип"
        case city = "Гданьск"
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

