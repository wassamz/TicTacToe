//
//  CommonUtil.swift
//  TicTacToe
//
//  Created by Wassam Zahreddine on 2019-04-14.
//  Copyright © 2019 Wassam Zahreddine. All rights reserved.
//

import Foundation

class CommonUtil {
var gameOver:Bool = false
var playerTurnState:Bool = false
var moveCount = 0
var gameState = [0,0,0,0,0,0,0,0,0] //0 empty, 1 nought, 2 cross
var winStates = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
}
