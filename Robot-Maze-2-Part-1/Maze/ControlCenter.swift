//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//
import UIKit

class ControlCenter {

    var mazeController: MazeController!

    func moveComplexRobot(_ myRobot: ComplexRobotObject) {
        
        let robotIsBlocked = isFacingWall(myRobot, direction: myRobot.direction)
        
        if robotIsBlocked {
            print("blocked")
            randomlyRotateRightOrLeft(myRobot)
        } else {
            print("not blocked")
            continueStraightOrRotate(myRobot)
        }
    }
        
    func previousMoveIsFinished(_ robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
    
}
