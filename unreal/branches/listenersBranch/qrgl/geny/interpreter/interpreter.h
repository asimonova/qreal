#include <QString>
#include <QFile>
#include <QTextStream>

#include "../../../qrrepo/repoApi.h"

namespace Geny {
	class Interpreter {
		public:
			Interpreter(const QString& taskFilename);
			~Interpreter();

			QString interpret();

		private:
			//Can move cursor position in stream!
			QString interpret(QTextStream& stream);

			//Control string starts with #!
			bool isControlString(const QString&);

			enum ControlStringType {
				COMMENT, FOREACH, 
				LEFT_BRACE, RIGHT_BRACE,
				NOT_CONTROL
			};
			ControlStringType controlStringType(const QString&);
			
			//Can move cursor position in stream!
			QString nonControlStringParse(const QString&, QTextStream& stream);
			//Can move cursor position in stream!
			QString controlStringParse(const QString&, QTextStream& stream);

			//Control expression between @@ @@
			QString controlExpressionParse(const QString& expression);
			QString getCurrentObjectProperty(const QString& propertyName);

			//нужно, так как возможно использование списка Id вместо одного
			qReal::Id getCurObjectId();
	
			QFile taskFile;
			QTextStream* inStream;

			qrRepo::RepoApi rApi;
			qReal::Id curObjectId;
	};
}