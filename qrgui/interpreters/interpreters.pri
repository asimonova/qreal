# Visual debugger
HEADERS += \
	interpreters/visualDebugger/visualDebugger.h \
	interpreters/visualDebugger/blockParser.h \
	interpreters/visualDebugger/number.h \
	interpreters/robots/details/blocks/initialBlockWithPorts.h

SOURCES += \
	interpreters/visualDebugger/visualDebugger.cpp \
	interpreters/visualDebugger/blockParser.cpp \
	interpreters/visualDebugger/number.cpp \
	interpreters/robots/details/blocks/initialBlockWithPorts.cpp

# Robots behavior diagrams interpreter
HEADERS += \
	interpreters/robots/interpreter.h \
	interpreters/robots/sensorConstants.h \
	interpreters/robots/robotCommunicationInterface.h \
	interpreters/robots/bluetoothRobotCommunication.h \
	interpreters/robots/details/thread.h \
	interpreters/robots/details/blocksFactory.h \
	interpreters/robots/details/blocksTable.h \
	interpreters/robots/details/bluetoothRobotCommunicationThread.h \
	interpreters/robots/details/robotCommandConstants.h \
	interpreters/robots/details/robotsBlockParser.h \
	interpreters/robots/details/autoconfigurer.h \
	interpreters/robots/details/blocks/block.h \
	interpreters/robots/details/blocks/dummyBlock.h \
	interpreters/robots/details/blocks/timerBlock.h \
	interpreters/robots/details/blocks/beepBlock.h \
	interpreters/robots/details/blocks/playToneBlock.h \
	interpreters/robots/details/blocks/initialBlock.h \
	interpreters/robots/details/blocks/finalBlock.h \
	interpreters/robots/details/blocks/waitForTouchSensorBlock.h \
	interpreters/robots/details/blocks/waitForSonarDistanceBlock.h \
	interpreters/robots/details/blocks/engineCommandBlock.h \
	interpreters/robots/details/blocks/enginesForwardBlock.h \
	interpreters/robots/details/blocks/enginesBackwardBlock.h \
	interpreters/robots/details/blocks/enginesStopBlock.h \
	interpreters/robots/details/blocks/loopBlock.h \
	interpreters/robots/details/blocks/forkBlock.h \
	interpreters/robots/details/blocks/waitForColorBlock.h \
	interpreters/robots/details/blocks/waitForColorIntensityBlock.h \
	interpreters/robots/details/blocks/functionBlock.h \
	interpreters/robots/details/blocks/ifBlock.h \
	interpreters/robots/details/blocks/waitForEncoderBlock.h \
	interpreters/robots/details/robotParts/robotModel.h \
	interpreters/robots/details/robotParts/brick.h \
	interpreters/robots/details/robotParts/motor.h \
	interpreters/robots/details/robotParts/sensor.h \
	interpreters/robots/details/robotParts/touchSensor.h \
	interpreters/robots/details/robotParts/sonarSensor.h \
	interpreters/robots/details/robotParts/colorSensor.h \
	interpreters/robots/details/robotParts/encoderSensor.h \
	interpreters/robots/details/robotImplementations/sensorImplementations/abstractSensorImplementation.h \
	interpreters/robots/details/robotImplementations/sensorImplementations/bluetoothSensorImplementation.h \
	interpreters/robots/details/robotImplementations/sensorImplementations/bluetoothTouchSensorImplementation.h \
	interpreters/robots/details/robotImplementations/sensorImplementations/bluetoothSonarSensorImplementation.h \
	interpreters/robots/details/robotImplementations/sensorImplementations/bluetoothColorSensorImplementation.h \
	interpreters/robots/details/robotImplementations/sensorImplementations/nullSensorImplementation.h \
	interpreters/robots/details/robotImplementations/sensorImplementations/nullTouchSensorImplementation.h \
	interpreters/robots/details/robotImplementations/sensorImplementations/nullSonarSensorImplementation.h \
	interpreters/robots/details/robotImplementations/sensorImplementations/nullColorSensorImplementation.h \
	interpreters/robots/details/robotImplementations/sensorImplementations/unrealSensorImplementation.h \
	interpreters/robots/details/robotImplementations/sensorImplementations/unrealTouchSensorImplementation.h \
	interpreters/robots/details/robotImplementations/sensorImplementations/unrealSonarSensorImplementation.h \
	interpreters/robots/details/robotImplementations/sensorImplementations/unrealColorSensorImplementation.h \
	interpreters/robots/details/robotImplementations/motorImplementations/abstractMotorImplementation.h \
	interpreters/robots/details/robotImplementations/motorImplementations/realMotorImplementation.h \
	interpreters/robots/details/robotImplementations/motorImplementations/nullMotorImplementation.h \
	interpreters/robots/details/robotImplementations/motorImplementations/unrealMotorImplementation.h \
	interpreters/robots/details/robotImplementations/brickImplementations/abstractBrickImplementation.h \
	interpreters/robots/details/robotImplementations/brickImplementations/realBrickImplementation.h \
	interpreters/robots/details/robotImplementations/brickImplementations/nullBrickImplementation.h \
	interpreters/robots/details/robotImplementations/brickImplementations/unrealBrickImplementation.h \
	interpreters/robots/details/robotImplementations/abstractRobotModelImplementation.h \
	interpreters/robots/details/robotImplementations/realRobotModelImplementation.h \
	interpreters/robots/details/robotImplementations/nullRobotModelImplementation.h \
	interpreters/robots/details/robotImplementations/unrealRobotModelImplementation.h \
	interpreters/robots/details/d2RobotModel/d2ModelWidget.h \
	interpreters/robots/details/d2RobotModel/d2ModelScene.h \
	interpreters/robots/details/d2RobotModel/d2RobotModel.h \
	interpreters/robots/details/d2RobotModel/robotItem.h \
	interpreters/robots/details/d2RobotModel/sensorItem.h \
	interpreters/robots/details/d2RobotModel/rotater.h \
	interpreters/robots/details/d2RobotModel/sonarSensorItem.h \
	interpreters/robots/details/d2RobotModel/robotModelInterface.h \
	interpreters/robots/details/d2RobotModel/sensorsConfiguration.h \
	interpreters/robots/details/d2RobotModel/worldModel.h \

SOURCES += \
	interpreters/robots/interpreter.cpp \
	interpreters/robots/bluetoothRobotCommunication.cpp \
	interpreters/robots/details/thread.cpp \
	interpreters/robots/details/blocksTable.cpp \
	interpreters/robots/details/blocksFactory.cpp \
	interpreters/robots/details/bluetoothRobotCommunicationThread.cpp \
	interpreters/robots/details/robotsBlockParser.cpp \
	interpreters/robots/details/autoconfigurer.cpp \
	interpreters/robots/details/blocks/block.cpp \
	interpreters/robots/details/blocks/dummyBlock.cpp \
	interpreters/robots/details/blocks/timerBlock.cpp \
	interpreters/robots/details/blocks/beepBlock.cpp \
	interpreters/robots/details/blocks/playToneBlock.cpp \
	interpreters/robots/details/blocks/initialBlock.cpp \
	interpreters/robots/details/blocks/finalBlock.cpp \
	interpreters/robots/details/blocks/waitForTouchSensorBlock.cpp \
	interpreters/robots/details/blocks/waitForSonarDistanceBlock.cpp \
	interpreters/robots/details/blocks/engineCommandBlock.cpp \
	interpreters/robots/details/blocks/enginesForwardBlock.cpp \
	interpreters/robots/details/blocks/enginesBackwardBlock.cpp \
	interpreters/robots/details/blocks/enginesStopBlock.cpp \
	interpreters/robots/details/blocks/loopBlock.cpp \
	interpreters/robots/details/blocks/forkBlock.cpp \
	interpreters/robots/details/blocks/waitForColorBlock.cpp \
	interpreters/robots/details/blocks/waitForColorIntensityBlock.cpp \
	interpreters/robots/details/blocks/functionBlock.cpp \
	interpreters/robots/details/blocks/ifBlock.cpp \
	interpreters/robots/details/blocks/waitForEncoderBlock.cpp \
	interpreters/robots/details/robotParts/robotModel.cpp \
	interpreters/robots/details/robotParts/touchSensor.cpp \
	interpreters/robots/details/robotParts/sonarSensor.cpp \
	interpreters/robots/details/robotParts/colorSensor.cpp \
	interpreters/robots/details/robotParts/encoderSensor.cpp \
	interpreters/robots/details/robotParts/sensor.cpp \
	interpreters/robots/details/robotParts/motor.cpp \
	interpreters/robots/details/robotParts/brick.cpp \
	interpreters/robots/details/robotImplementations/sensorImplementations/abstractSensorImplementation.cpp \
	interpreters/robots/details/robotImplementations/sensorImplementations/bluetoothSensorImplementation.cpp \
	interpreters/robots/details/robotImplementations/sensorImplementations/bluetoothTouchSensorImplementation.cpp \
	interpreters/robots/details/robotImplementations/sensorImplementations/bluetoothSonarSensorImplementation.cpp \
	interpreters/robots/details/robotImplementations/sensorImplementations/bluetoothColorSensorImplementation.cpp \
	interpreters/robots/details/robotImplementations/sensorImplementations/nullSensorImplementation.cpp \
	interpreters/robots/details/robotImplementations/sensorImplementations/nullTouchSensorImplementation.cpp \
	interpreters/robots/details/robotImplementations/sensorImplementations/nullSonarSensorImplementation.cpp \
	interpreters/robots/details/robotImplementations/sensorImplementations/nullColorSensorImplementation.cpp \
	interpreters/robots/details/robotImplementations/sensorImplementations/unrealSensorImplementation.cpp \
	interpreters/robots/details/robotImplementations/sensorImplementations/unrealTouchSensorImplementation.cpp \
	interpreters/robots/details/robotImplementations/sensorImplementations/unrealSonarSensorImplementation.cpp \
	interpreters/robots/details/robotImplementations/sensorImplementations/unrealColorSensorImplementation.cpp \
	interpreters/robots/details/robotImplementations/motorImplementations/abstractMotorImplementation.cpp \
	interpreters/robots/details/robotImplementations/motorImplementations/realMotorImplementation.cpp \
	interpreters/robots/details/robotImplementations/motorImplementations/nullMotorImplementation.cpp \
	interpreters/robots/details/robotImplementations/motorImplementations/unrealMotorImplementation.cpp \
	interpreters/robots/details/robotImplementations/brickImplementations/abstractBrickImplementation.cpp \
	interpreters/robots/details/robotImplementations/brickImplementations/realBrickImplementation.cpp \
	interpreters/robots/details/robotImplementations/brickImplementations/nullBrickImplementation.cpp \
	interpreters/robots/details/robotImplementations/brickImplementations/unrealBrickImplementation.cpp \
	interpreters/robots/details/robotImplementations/abstractRobotModelImplementation.cpp \
	interpreters/robots/details/robotImplementations/realRobotModelImplementation.cpp \
	interpreters/robots/details/robotImplementations/nullRobotModelImplementation.cpp \
	interpreters/robots/details/robotImplementations/unrealRobotModelImplementation.cpp \
	interpreters/robots/details/d2RobotModel/d2ModelWidget.cpp \
	interpreters/robots/details/d2RobotModel/d2ModelScene.cpp \
	interpreters/robots/details/d2RobotModel/d2RobotModel.cpp \
	interpreters/robots/details/d2RobotModel/robotItem.cpp \
	interpreters/robots/details/d2RobotModel/sensorItem.cpp \
	interpreters/robots/details/d2RobotModel/rotater.cpp \
	interpreters/robots/details/d2RobotModel/sonarSensorItem.cpp \
	interpreters/robots/details/d2RobotModel/sensorsConfiguration.cpp \
	interpreters/robots/details/d2RobotModel/worldModel.cpp \

FORMS += \
	interpreters/robots/details/d2RobotModel/d2Form.ui \

# Files for parsiong of expressions on diagrams
HEADERS += \
	interpreters/expressionsParser/expressionsParser.h \

SOURCES += \
	interpreters/expressionsParser/expressionsParser.cpp \