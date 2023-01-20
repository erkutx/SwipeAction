
# Project Title:SwipeAction SwiftUI

SwiftUI is a modern framework for building user interfaces for iOS, macOS, watchOS, and tvOS. It provides a declarative syntax for creating and modifying views, making it easier to build and maintain complex user interfaces.


## Setting Up The Projects

Open Xcode and create a new project using the "Single View App" template.
Select "SwiftUI" as the User Interface.
In the ContentView.swift file, replace the existing Text view with a List view.
In the List, create a ForEach loop to iterate over an array of items.
For each item, add a Text view to display the item's name.

## SwipeActionsToDoApp
sample SwiftUI project that demonstrates how to use swipe actions in a List view. The List view displays a collection of items, and the ForEach loop is used to iterate over the items. The HStack is used to display an image and the text of each item.

Swipe actions are added to each item in the list using the swipeActions modifier. The swipeActions modifier is used to create a button that is displayed when the user swipes on an item. In this example, three different actions are added to each item:

A bell icon is displayed on the right edge with a yellow color when the user swipes left.
A trash icon is displayed on the left edge with a red color when the user swipes right.
A gear icon is displayed on the leading edge with a purple color when the user swipes left.
Each action has a closure that is executed when the user taps on the button. In this example, the closure simply prints "do something" to the console.

The navigation bar title is set to "To Do List" using the navigationTitle modifier on the List view.