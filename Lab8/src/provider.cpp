#include "provider.h"

#include <QDebug>

Provider::Provider() : QQuickImageProvider(QQuickImageProvider::Image)
{

}

QImage Provider::requestImage(const QString &id, QSize *size, const QSize &requestedSize)
{
    if(imagem.isNull())
    {
        qDebug() << "Erro ao prover a imagem";
    }

    return imagem;
}

void Provider::carregaImagem(QImage imagemRecebida)
{
    imagem = imagemRecebida;
}
