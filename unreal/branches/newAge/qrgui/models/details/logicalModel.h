#pragma once

#include <QMimeData>
#include <QDebug>

#include "../../../qrrepo/repoApi.h"
#include "../../editorManager/editorManager.h"
#include "modelsImplementation/logicalModelItem.h"
#include "modelsImplementation/abstractModel.h"
#include "graphicalModelView.h"

namespace qReal {

namespace models {

namespace details {

class GraphicalModel;

class LogicalModel : public modelsImplementation::AbstractModel
{
	Q_OBJECT;

public:
	LogicalModel(qrRepo::LogicalRepoApi *repoApi, EditorManager const &editorManager);

	void connectToGraphicalModel(GraphicalModel * const graphicalModel);
	void updateElements(Id const &logicalId, QString const &name);
	virtual QMimeData* mimeData(const QModelIndexList &indexes) const;
	virtual bool dropMimeData(QMimeData const *data, Qt::DropAction action, int row, int column, QModelIndex const &parent);
	void addElementToModel(Id const &parent, Id const &id,Id const &logicalId, QString const &name, QPointF const &position);
	virtual QVariant data(const QModelIndex &index, int role) const;
	virtual bool setData(const QModelIndex &index, const QVariant &value, int role);
	virtual void changeParent(QModelIndex const &element, QModelIndex const &parent, QPointF const &position);

private:
	GraphicalModelView mGraphicalModelView;
	qrRepo::LogicalRepoApi &mApi;
	virtual modelsImplementation::AbstractModelItem *createModelItem(Id const &id, modelsImplementation::AbstractModelItem *parentItem) const;
	void initializeElement(const Id &id, modelsImplementation::AbstractModelItem *parentItem,
			modelsImplementation::AbstractModelItem *item, const QString &name, const QPointF &position);
	QString pathToItem(modelsImplementation::AbstractModelItem const * const item) const;
	QModelIndex indexById(Id const &id) const;
};

}

}

}
