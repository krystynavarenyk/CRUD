//
//  StorageService.swift
//  CRUD
//
//  Created by Kristina Varenyk on 05/04/2021.
//

import RealmSwift


final class StorageService {
    
    static let shared = StorageService()
    
    private init() {}
    
    func retrieveTasks(_ completion: ([Task]) -> Void) {
        do {
            let realm = try Realm(configuration: Realm.Configuration.defaultConfiguration)
            let result = Array(realm.objects(Task.self))
            
            completion(result)
        } catch {
            print("Erorr retieving tasks")
        }
    }
    
    func createTask(_ task: Task) {
        do {
            let realm = try Realm(configuration: Realm.Configuration.defaultConfiguration)
            
            try realm.write({
                realm.add(task)
            })
        } catch {
            print("Erorr creating tasks")
        }
    }
    
    func updateTask(_ modification: () -> Void) {
        do {
            let realm = try Realm(configuration: Realm.Configuration.defaultConfiguration)
            
            try realm.write({
                modification()
            })
        } catch {
            print("Erorr updating tasks")
        }
    }
    
    func deleteTask(_ task: Task) {
        do {
            let realm = try Realm(configuration: Realm.Configuration.defaultConfiguration)
            try realm.write({
                realm.delete(task)
            })
        } catch {
            print("Erorr updating tasks")
        }
    }
    
    
}

