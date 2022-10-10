#include "logindialog.h"
#include "ui_logindialog.h"
#include <QGraphicsDropShadowEffect>
LoginDialog::LoginDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::LoginDialog)
{
    ui->setupUi(this);
    QGraphicsDropShadowEffect * shadowEffect = new QGraphicsDropShadowEffect();
    shadowEffect->setYOffset(2);
    shadowEffect->setXOffset(2);
    shadowEffect->setBlurRadius(12);
    shadowEffect->setColor(QColor(0,0,0,51));
    ui->groupBox->setGraphicsEffect(shadowEffect);
}

LoginDialog::~LoginDialog()
{
    delete ui;
}
