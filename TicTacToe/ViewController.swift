//
//  ViewController.swift
//  TicTacToe
//
//  Created by Wassam Zahreddine on 2019-03-23.
//  Copyright © 2019 Wassam Zahreddine. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gameOver:Bool = false
    var playerTurnState:Bool = false
    var moveCount = 0
    static let newGameState =
        [0,0,0,0,0,0,0,0,0] //0 empty, 1 nought, 2 cross
    var gameState = newGameState
    
    var winStates = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    @IBOutlet weak var drawLabel: UILabel!
    @IBOutlet weak var replayButton: UIButton!
    @IBOutlet weak var winnerImg: UIImageView!
    @IBOutlet var gamePieceButtons: [UIButton]!
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        //Check if location is already used
        let pos = sender.tag - 1 // current position on gameboard pressed
        if(gameOver || gameState[pos] != 0) {
            return
        }
        
        playerTurnState = !playerTurnState
        var gamePiece = "nought.png"
        if(playerTurnState){
            gamePiece = "nought.png"
            gameState[pos]=1
        }else{
            gamePiece = "cross.png"
            gameState[pos]=2
        }
        
        sender.setImage(UIImage( named:gamePiece), for: [])
        moveCount = moveCount + 1
        checkForWin()
    }
    func checkForWin() {
            print(moveCount)
        if (moveCount < 5) {
            return
        }
        for combination in winStates {
            if (gameState[combination[0]] != 0
                && gameState[combination[0]] == gameState[combination[1]]
                && gameState[combination[1]] == gameState[combination[2]]){
                print("winner!")
                displayResult(result: "win")
                return
            }
        }
        if (moveCount == 9) {
            print("it's a draw!")
            displayResult(result: "draw")
        }
    }
   
    @IBAction func replayPressed(_ sender: Any) {
        gameOver = false
        moveCount = 0
        winnerImg.isHidden = true
        drawLabel.isHidden = true
        replayButton.isHidden = true
        gameState = ViewController.newGameState
        for button in gamePieceButtons {
            button.setImage(nil, for: [])
        }
    }
    
    func displayResult(result: String) {

        gameOver = true
        replayButton.alpha = 0
        replayButton.isHidden = false
        if(result == "win") {
            winnerImg.isHidden = false
        } else { //draw
            drawLabel.isHidden = false
        }
        
        UIView.animate(withDuration: 2, animations: {
            self.replayButton.alpha = 1.0
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

