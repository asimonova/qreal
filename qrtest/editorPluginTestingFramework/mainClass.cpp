#include "mainClass.h"
#include "methodsTester.h"
#include "defs.h"

#include <QtCore/QDir>

using namespace qReal;
using namespace editorPluginTestingFramework;

MainClass::MainClass(QString const &fileName, QString const &pathToQrmc)
{
	createNewFolders();
	QString const normalizedFileName = normalizedName(fileName);

	launchQrmc(fileName, pathToQrmc);
	compilePlugin(pathToQrmcGeneratedCode);
	EditorInterface* const qrmcGeneratedPlugin = loadedPlugin(normalizedFileName, pathToQrmcGeneratedPlugin);

	launchQrxc(normalizedFileName);
	compilePlugin(pathToQrxcGeneratedCode);
	EditorInterface* const qrxcGeneratedPlugin = loadedPlugin(normalizedFileName, pathToQrxcGeneratedPlugin);

	MethodsTester* const methodsTester = new MethodsTester(qrmcGeneratedPlugin, qrxcGeneratedPlugin);

	methodsTester->testMethods();
}

void MainClass::createFolder(QString const &path)
{
	QDir dir;
	if (!dir.exists(path)) {
		dir.mkdir(path);
	}
}

void MainClass::createNewFolders()
{
	createFolder(binariesDir);
	createFolder(pluginsDir);
	createFolder(sourcesDir);
	createFolder(pathToQrmcGeneratedPlugin);
	createFolder(pathToQrxcGeneratedPlugin);
}

QString MainClass::normalizedName(QString const &fileName)
{
	QString normalizedName = fileName;
	if (fileName.contains("/")) {
		QStringList splittedName = normalizedName.split("/");
		normalizedName = splittedName.last();
	}
	if (normalizedName.contains(".qrs")) {
		normalizedName.chop(4);
	}
	return normalizedName;
}

void MainClass::deleteOldBinaries(QString const &directory)
{
	qDebug() << directory;
	QDir dir(directory);
	if (!dir.exists()) {
		return;
	}

	foreach (QFileInfo const &fileInfo, dir.entryInfoList(QDir::AllEntries | QDir::NoDotAndDotDot)) {
		if (fileInfo.isDir()) {
			deleteOldBinaries(fileInfo.filePath());
			dir.rmdir(fileInfo.fileName());
		} else {
			dir.remove(fileInfo.fileName());
		}
	}
}


void MainClass::launchQrmc(QString const &fileName, QString const &pathToQrmc)
{
	mQrmcLauncher.launchQrmc(fileName, pathToQrmc);
}

void MainClass::compilePlugin(QString const &directoryToCodeToCompile)
{
	mPluginCompiler.compilePlugin(directoryToCodeToCompile);
}

void MainClass::launchQrxc(QString const &fileName)
{
	mQrxcLauncher.launchQrxc(fileName);
}

EditorInterface* MainClass::loadedPlugin(QString const &fileName, QString const &pathToFile)
{
	return mPluginLoader.loadedPlugin(fileName, pathToFile);
}
