#include <QObject>
#include <QMetaObject>
#include <QDebug>
#include <QImage>
#include <QString>
#include <QColor>
#include <QRgb>
#include <QPixmap>
#include <QImageReader>
#include <QByteArray>
#include <QQuickImageProvider>
#include <QBuffer>

class Filter : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString url READ getUrl WRITE setUrl NOTIFY urlChange)

private:
    QImage* image;
    QString url = "null";

public:
    Q_INVOKABLE Filter() : QObject() {}

    QString getUrl() {
        return url;
    }

    Q_INVOKABLE void setUrl(QString _url) {
        url = _url;
        url.remove(0,3);
        image = new QImage();
        image->load(url);

        if(!image->isNull()){
            qDebug() <<"Width and Height: " << image->width() << " " << image->height();
            qDebug() <<"Processing...";
            for(int i = 0; i < image->height();++i){
                for(int j = 0; j<image->width(); ++j){
                   QColor newColor(image->pixelColor(j,i));
                   int color = (newColor.red()+newColor.green()+newColor.blue())/3;

                    newColor.setRed(color);
                    newColor.setGreen(color);
                    newColor.setBlue(color);

                   image->setPixelColor(j,i,newColor);
                }
            }


             qDebug() <<"Complite";
        }
    }

   Q_INVOKABLE void info() {
        qDebug() << qPrintable(url);
    }

    Q_INVOKABLE QString reciveImage() const
     {

     QByteArray bArray;
     QBuffer buffer(&bArray);
     buffer.open(QIODevice::WriteOnly);
     image->save(&buffer, "JPEG");

        QString newStr("data:image/jpg;base64,");
        newStr.append(QString::fromLatin1(bArray.toBase64().data()));

        return newStr;
     }

signals:
    void urlChange();

private slots:
    void print() {
        qDebug() << qPrintable(url);
    }
};
