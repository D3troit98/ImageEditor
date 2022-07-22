#ifndef LISTMODEL_H
#define LISTMODEL_H

#include <QObject>

class Listmodel : public QObject
{
    Q_OBJECT
public:
    explicit Listmodel(QObject *parent = nullptr);

signals:

};

#endif // LISTMODEL_H
