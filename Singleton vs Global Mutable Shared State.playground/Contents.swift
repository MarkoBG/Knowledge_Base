import UIKit

// Singleton Design Pattern

// is used when you want to be sure that a class has only one instance and it provides
// a single point of access to it.
// the class itself should be responsible for keeping track of it sole instance.

class ApiClient {
    static let shared = ApiClient()
    private init() {}
}

let shared = ApiClient.shared


// Singleton with lower 's'

// it is a variation of Singleton, constitutes a class that is being instantiated only one time
// in the whole lifecycle of the app.
// however, its API does not prohibit developers from creating the new instance of the class.
// some example of such objects are Apple's: URLSeesion.shared and UserDefaults.standard
// they offer a shared instance for accessing a immutable reference (get only) of themselves
// aslo they allow their clients to create other instances through their initializers

class Client {
    static let shared = Client()
    init() {}
}

let sharedClient = Client.shared
let newClient = Client()


// Mutable Global Shared State

// it is usually accessed by static shared instance of a class and allowes to access and mutation
// of that reference (using var instead of let)

class Global {
    static var shared = Global()
    private init() {}
}

