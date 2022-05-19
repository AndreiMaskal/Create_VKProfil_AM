//
//  ViewController.swift
//  VK_Profil_Andrei_Maskal
//
//  Created by Andrei Maskal on 17/05/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var iconImageView = UIImageView()
    var buttonEdit = UIButton()
    var labelName = UILabel()
    var labelStatus = UILabel()
    var labelStatusOnline = UILabel()
    var iconImageStatusOnline = UIImageView()
    var iconMediaPhoto = UIImageView()
    var iconMediaVideo = UIImageView()
    var iconMediaNotes = UIImageView()
    var iconMediaHistory = UIImageView()
    var buttonMediaPhoto = UIButton()
    var buttonMediaVideo = UIButton()
    var buttonMediaNotes = UIButton()
    var buttonMediaHistory = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupView() {
        view.backgroundColor = .black
    }
    
    private func setupUI() {
        setupView()
        setupIconImageView()
        setupIconImageStatusOnline()
        setupButtonEdit()
        setupLabelName()
        setupLabelStatus()
        setupLabelStatusOnline()
        setapIconMedia()
        setupButtonMedia()
    }
    
    //MARK: - icons
    
    private func setupIconImageView() {
        iconImageView.image = UIImage(named: "title_icon")
        iconImageView.translatesAutoresizingMaskIntoConstraints = true
        iconImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        iconImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        iconImageView.frame = CGRect(x: 20, y: 40, width: 100, height: 100)
        iconImageView.layer.cornerRadius = iconImageView.bounds.height / 2
        iconImageView.clipsToBounds = true
        view.addSubview(self.iconImageView)
    }
    
    private func setupIconImageStatusOnline() {
        iconImageStatusOnline.image = UIImage(named: "icon_phone")
        iconImageStatusOnline.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        iconImageStatusOnline.frame = CGRect(x: 190, y: 114.5, width: 10, height: 15)
        view.addSubview(self.iconImageStatusOnline)
    }
    
    private func setapIconMedia() {
        iconMediaPhoto.image = UIImage(named: "photo")
        iconMediaVideo.image = UIImage(named: "play-1")
        iconMediaNotes.image = UIImage(named: "pencil")
        iconMediaHistory.image = UIImage(named: "camera")
        iconMediaPhoto.frame = CGRect(x: 250, y: 260, width: 35, height: 35)
        iconMediaVideo.frame = CGRect(x: 355, y: 260, width: 35, height: 35)
        iconMediaNotes.frame = CGRect(x: 140, y: 260, width: 35, height: 35)
        iconMediaHistory.frame = CGRect(x: 35, y: 260, width: 35, height: 35)
        iconImageView.clipsToBounds = true
        view.addSubview(self.iconMediaPhoto)
        view.addSubview(self.iconMediaVideo)
        view.addSubview(self.iconMediaHistory)
        view.addSubview(self.iconMediaNotes)
    }
    
    //MARK: - buttons
    
    private func setupButtonEdit() {
        buttonEdit.frame = CGRect(x: 20, y: 170, width: 380, height: 50)
        buttonEdit.backgroundColor = #colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)
        buttonEdit.setTitle("Редактировать", for: .normal)
        buttonEdit.titleLabel?.font = .systemFont(ofSize: 25, weight: .medium)
        buttonEdit.setTitleColor(.systemGray4, for: .normal)
        buttonEdit.layer.cornerRadius = buttonEdit.bounds.height / 4
        buttonEdit.clipsToBounds = true
        view.addSubview(self.buttonEdit)
    }
    
    private func setupButtonMedia() {
        buttonMediaNotes.setTitle("Запись", for: .normal)
        buttonMediaVideo.setTitle("Клип", for: .normal)
        buttonMediaPhoto.setTitle("Фото", for: .normal)
        buttonMediaHistory.setTitle("История", for: .normal)
        buttonMediaNotes.setTitleColor(.systemIndigo, for: .normal)
        buttonMediaVideo.setTitleColor(.systemIndigo, for: .normal)
        buttonMediaPhoto.setTitleColor(.systemIndigo, for: .normal)
        buttonMediaHistory.setTitleColor(.systemIndigo, for: .normal)
        buttonMediaNotes.frame = CGRect(x: 125, y: 300, width: 60, height: 30)
        buttonMediaVideo.frame = CGRect(x: 342, y: 300, width: 60, height: 30)
        buttonMediaPhoto.frame = CGRect(x: 238, y: 300, width: 60, height: 30)
        buttonMediaHistory.frame = CGRect(x: 10, y: 300, width: 80, height: 30)
        view.addSubview(self.buttonMediaNotes)
        view.addSubview(self.buttonMediaVideo)
        view.addSubview(self.buttonMediaPhoto)
        view.addSubview(self.buttonMediaHistory)
        
    }
    
    
    //MARK: - labels
    
    private func setupLabelName() {
        labelName.translatesAutoresizingMaskIntoConstraints = true
//        labelName.topAnchor.constraint(equalTo: view.topAnchor, constant: 130) .isActive = true
//        labelName.topAnchor.constraint(equalTo: view.topAnchor, constant: 130) .isActive = true
//        labelName.topAnchor.constraint(equalTo: view.topAnchor, constant: 130) .isActive = true
//        labelName.topAnchor.constraint(equalTo: view.topAnchor, constant: 130) .isActive = true
        labelName.frame = CGRect(x: 130, y: 45, width: 200, height: 35)
        labelName.text = "Андрей Москаль"
        labelName.font = .systemFont(ofSize: 23, weight: .heavy)
        labelName.textColor = .systemGray4
        labelName.textAlignment = .left
        view.addSubview(self.labelName)
    }
    
    private func setupLabelStatus() {
        labelStatus.frame = CGRect(x: 130, y: 77, width: 200, height: 35)
        labelStatus.text = "Установить статус"
        labelStatus.font = .systemFont(ofSize: 20, weight: .medium)
        labelStatus.textColor = #colorLiteral(red: 0.3703377843, green: 0.3604713082, blue: 0.9021168351, alpha: 1)
        labelStatus.textAlignment = .left
        view.addSubview(self.labelStatus)
    }
    
    private func setupLabelStatusOnline() {
        labelStatusOnline.frame = CGRect(x: 130, y: 115, width: 200, height: 15)
        labelStatusOnline.text = "online"
        labelStatusOnline.font = .systemFont(ofSize: 18, weight: .medium)
        labelStatusOnline.textColor = .gray
        labelStatusOnline.textAlignment = .left
        view.addSubview(self.labelStatusOnline)
    }
    
    
    
}
