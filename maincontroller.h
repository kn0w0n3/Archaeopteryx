#ifndef MAINCONTROLLER_H
#define MAINCONTROLLER_H
#include <QObject>
#include <QProcess>
#include <QDebug>
#include <QStringList>

class MainController: public QObject{
    Q_OBJECT

public:
    MainController(QObject *parent = nullptr);

signals:
    void scrapyDataToQml(QString scrapyData_1);

public slots:
    void runSpider(void);


private:
    QString scrapyData;

};

#endif // MAINCONTROLLER_H
