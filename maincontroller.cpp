#include "maincontroller.h"

MainController::MainController(QObject *parent) : QObject(parent){
    //runSpider();
}

void MainController::runSpider(void){

    /*EXAMPLE
    QProcess *runWireshark = new QProcess();
    QString programPath = "/usr/bin/gnome-terminal";
    runWireshark->start(programPath);
    */
    //scrapy genspider example example.com
    //scrapy genspider spiderX1 quotes.toscrape.com
    qDebug() << "Trying to  run SPider.......";
/*
    QProcess *runTerminal = new QProcess();
    QString programPath = "/usr/bin/gnome-terminal";
    //QString programName = "gnome-terminal";
    //runTerminal->setWorkingDirectory("home/voldem0rt/Documents/Qt_Projects/Archaeopteryx/Archaeopteryx/scrapy/archaeopteryx/archaeopteryx/spiders/");
    QStringList arguments;
     //arguments << "home/voldem0rt/Documents/Qt_Projects/Archaeopteryx/Archaeopteryx/scrapy/archaeopteryx/archaeopteryx/spiders/scrapy crawl spiderX1" ;
    //arguments << "aircrack-ng " << "ls";
    runTerminal->write("ls");
    runTerminal->start(programPath);
    //runTerminal->write("ls");
    //runTerminal->setWorkingDirectory("/home/voldem0rt/Documents/Qt_Projects/Archaeopteryx/Archaeopteryx/scrapy/archaeopteryx/archaeopteryx/spiders/");
*/
    QProcess proc;
    proc.start("scrapy", QStringList() << "", QIODevice::ReadWrite);
    proc.waitForFinished();
    QByteArray output = proc.readAll();
    scrapyData = QString(output);
    proc.close();
    emit scrapyDataToQml(scrapyData);




    //QByteArray aa = proc.readAllStandardOutput();

    //qDebug() << aa;
    //qDebug() << output;
    //qDebug() << proc.readAllStandardError();
/*
    QProcess OProcess;
    QString Command;    //Contains the command to be executed
    QStringList args;   //Contains arguments of the command

    Command = "scrapy crawl spiderX1";
    args << "/home/voldem0rt/Documents/Qt_Projects/Archaeopteryx/Archaeopteryx/scrapy/archaeopteryx/archaeopteryx/spiders/";

    OProcess.start(Command,args,QIODevice::ReadOnly); //Starts execution of command
    OProcess.waitForFinished();                       //Waits for execution to complete

    QString StdOut      =   OProcess.readAllStandardOutput();  //Reads standard output
    QString StdError    =   OProcess.readAllStandardError();   //Reads standard error

    qDebug() << "Printing the standard output..........\n";
    qDebug() << StdOut;
    qDebug() << "Printing the standard error..........\n";
    qDebug()  <<StdError;
*/
    //QStringList arguments;
    //arguments << "-style" << "fusion";

    /*
    QProcess *spiderX1 = new QProcess();
    QString program = "/home/voldem0rt/Documents/Qt_Projects/Archaeopteryx/"
                      "Archaeopteryx/scrapy/archaeopteryx/archaeopteryx/"
                      "spiders/scrapy crawl spiderX1";
    QByteArray receivedData = spiderX1->readAllStandardOutput();
    qDebug() << receivedData;
    spiderX1->start(program);
    */
}
