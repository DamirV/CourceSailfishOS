#ifndef PROVEDORIMAGEM_H
#define PROVEDORIMAGEM_H

#include <QObject>
#include <QImage>
#include <QQuickImageProvider>

class Provider : public QObject, public QQuickImageProvider
{
    Q_OBJECT

public:
    Provider();

    QImage requestImage(const QString &id, QSize *size, const QSize &requestedSize);

public slots:
    void carregaImagem(QImage imagemRecebida);

private:
    QImage imagem;
};

#endif // PROVEDORIMAGEM_H
