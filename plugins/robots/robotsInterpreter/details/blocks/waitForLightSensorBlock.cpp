#include "waitForLightSensorBlock.h"

#include "../../sensorConstants.h"

using namespace qReal;
using namespace interpreters::robots;
using namespace interpreters::robots::details::blocks;

WaitForLightSensorBlock::WaitForLightSensorBlock(details::RobotModel * const robotModel)
	: WaitForSensorBlock(robotModel, sensorType::light)
{
}

void WaitForLightSensorBlock::responseSlot(int reading)
{
	int const targetPercents = evaluate("Percents").toInt();
	reading = reading * 100 / maxValue; // Converting value into percents
	processResponce(reading, targetPercents);
}

interpreters::robots::details::robotParts::Sensor *WaitForLightSensorBlock::sensor() const
{
	return mRobotModel->lightSensor(mPort);
}

QString WaitForLightSensorBlock::name() const
{
	return tr("Light sensor");
}
