// Playground - noun: a place where people can play

//source:  raywenderlich.com/75289/swift-tutorial-part3-tuples-protocols-delegates-table-views

import UIKit

@objc protocol Speaker {
	func Speak()
	optional func TellJoke()
}

class Vicki: Speaker {
	func Speak() {
		println("Hello, I am Vicki")
	}
	func TellJoke() {
		println("vicki joking")
	}
}

class Ray: Speaker {
	func Speak() {
		println("Yo, I am Ray!")
	}
	func TellJoke() {
		println("Ray joking")
	}
	func WriteTutorial(){
		println("I'm on it")
	}
}

class Animal {
}
class Dog: Animal, Speaker {
	func Speak() {
		println("Woof!")
	}
}

/*
by declaring guy of type Speaker instead of Ray
we therefore only have access to methods from the Speaker Protocol

if we want guy to have all of Ray's methods
we must temporarily cast guy to type Ray
*/
var guy: Speaker = Ray()
guy.Speak()
(guy as Ray).WriteTutorial()
guy.TellJoke!()

//this is optional chaining as opposed to optional binding
guy.TellJoke?()
guy = Dog()
guy.TellJoke?()



