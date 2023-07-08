//
//  README.txt
//  ColoredSquares
//
//  Created by volker on 08.07.23.
//

--------------------------------

Application:
  ColoredSquares

Description:
  Collection of squares that change color, orientation and size.
  
Instruction:
  Exit app:                   Double tap on title
  Refresh squares:            Tap on title
  Change squares:             Tap in square box
  Change number of squares:   Tap on top buttons
  Change size of square box:  Tap on bottom buttons
  Info on app:                Tap on copyright
  Exit info:                  Tap on info title

--------------------------------

Author:
  Volker Kasack

eMail:
  volker.kasack at email service protonmail.com

--------------------------------

Updated:
  2023-07-08 Refactured, separated from CSGames

--------------------------------

Remarks:
  Designed for iPhone 12 pro.

ToDos:
  Render square, when clicked on square.
  
  ColoredSquaresModel
  Problem: With lot of squares ... square hide box border, bottom square row become rectangles
  Project navigator with folders (e.g. for ColoredSquaresApp)
  Comments
  Only one published property "modelUpdated"
  GeometryReader for automatic adjustment of widget positions and gaps.
  Include RGB Colors
  Hover Squares, Buttons
  Timeline (automatic update)
  Animation for buttons, on hover, on tap, ...
  Improve screen update after button activation
  Rotate single squares on change
  Randomly slightly tilted squares
  Randomly slightly different square sizes
  Rotate big square
  Implement user instruction
  Color range choser
  Color gradient infuenced by neightbor squares
  Save data in data base
  Move squares
  Growing and shirinking square
  Fill big square with squares of different size, cover the background completly
  Show model data
  Gestures https://www.hackingwithswift.com/books/ios-swiftui/how-to-use-gestures-in-swiftui

--------------------------------

Content:

  README
  CSMain
    CSTitle
    CSCopyright
  CSSettings
  
  #Views
    #Game
      CSGame
      CSSquarebox
      CSSquare
      CSButton
      
    #Info
      CSInfo
      CSInfoTitle
      CSInfoSelector
      
      #Pages
        _CSInfoPage
        CSUserInstructions
        CSDate
        CSStatistics
        CSCustomization
        CSAbout
        CSColorChoser
      
  #ViewModel
    CSViewModel
    
  #Model
    
--------------------------------
