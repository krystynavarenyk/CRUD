//
//  Project.swift
//  CRUD
//
//  Created by Kristina Varenyk on 05/04/2021.
//

import UIKit
import RealmSwift

class Project: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var descriptionProject: String = ""
    @objc dynamic var startDate: Date = Date()
    @objc dynamic var endDate: Date = Date()
    @objc dynamic var assignee: User = User()
    var completionStatus: CompletionStatus = CompletionStatus.new
    var tasks = List<Task>()
    var comments =  List<Comment>()
    var attachments = List<Attachment>()
    @objc dynamic var projectAvatar: String = ""
}

class Task: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var descriptionTask: String = ""
    @objc dynamic var startDate: String = ""
    @objc dynamic var endDate: String = ""
    @objc dynamic var assignee: User = User()
    var completionStatus: CompletionStatus = CompletionStatus.new
    var comments =  List<Comment>()
    @objc dynamic var trackedTime: TimeInterval = TimeInterval()
    var attachments =  List<Attachment>()
    var notifications =  List<Notification>()
    var tags = List<Tag>()
//    var checklistItems =  List<ChecklistItem>()
    
}

enum CompletionStatus {
    case new
    case inProgress(Int)
    case done
}

class User: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var fullName: String = ""
    @objc dynamic var nickName: String = ""
    @objc dynamic var jobTitle: String = ""
    @objc dynamic var bio: String = ""
    @objc dynamic var email: String = ""
    var groups =  List<UserGroup>()
    @objc dynamic var avatar: String = ""
    @objc dynamic var phone: String = ""
    @objc dynamic var address: String = ""
    var friends = List<String>()
    var projects = List<String>()
    var tasks = List<String>()
    var socialLinks = List<SocialLink>()
    @objc dynamic var lastActive: Date = Date()
    
}

class Comment: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var owner: String = UUID().uuidString
    @objc dynamic var text: String = ""
    @objc dynamic var date: Date = Date()
    var mentions = List<String>()
    
}

class Attachment: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    // @objc dynamic var attachmentType: AttachmentType = AttachmentType
    @objc dynamic var link: String = ""
    @objc dynamic var size: Int = 0
    @objc dynamic var uploadDate: Date = Date()
    @objc dynamic var owner: String = UUID().uuidString
    
}

enum AttachmentType {
    
    case image((name: String, icon: UIImage))
    case pdf((name: String, icon: UIImage))
    
}

class Notification: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var fireTime: Date = Date()
    
}

class Tag: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = ""
    @objc dynamic var color: UIColor = UIColor()
    
}

class UserGroup: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String = "smth new"
    
}

class SocialLink: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    
}

class ChecklistItemChanged: Object {
    
    @objc dynamic var id: String = UUID().uuidString
    
}

class Lolo: Object {
    
}


class Kris: Object {
    
}


class BestClass: Object {
  @objc dynamic var bestVariable = 10
  
  func printSomething() {
    for _ in 0...bestVariable {
      print("aaa")
      print("bbb")
      
    }
  }
}

class SecondClass: Object {}

