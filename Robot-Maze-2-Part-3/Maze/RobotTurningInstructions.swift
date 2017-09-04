//
//  RobotTurningInstructions.swift
//  Maze
//
//  Created by Gabrielle Miller-Messner on 11/5/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

import Foundation

extension ControlCenter {
    
    func randomlyRotateRightOrLeft(_ robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        print("randomlyRotateRightOrLeft: \(randomNumber)")
        // You may want to paste your Part 1 implementation of randomlyRotateRightOrLeft(robot: ComplexRobotObject) here.
        if randomNumber == 0 {
            robot.rotateLeft()
        } else {
            robot.rotateRight()
        }
    }
    
    func continueStraightOrRotate(_ robot: ComplexRobotObject, wallInfo:(up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int)) {
        let randomNumber = arc4random() % 2
        if randomNumber == 0 {
            robot.move()
        } else {
            turnTowardClearPath(robot, wallInfo: wallInfo)
        }
        
        
    }

    func turnTowardClearPath(_ robot: ComplexRobotObject, wallInfo: (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int)) {
        // Instead of passing wall info
        //  USE this
        //let myWallInfo = checkWalls(robot)
        
        if robot.direction == .left && wallInfo.down {
            robot.rotateRight()
        } else if robot.direction == .up && wallInfo.left {
            robot.rotateRight()
        } else if robot.direction == .right && wallInfo.up {
            robot.rotateRight()
        } else if robot.direction == .down && wallInfo.right {
            robot.rotateRight()
        } else {
            robot.rotateLeft()
        }
    }

}
