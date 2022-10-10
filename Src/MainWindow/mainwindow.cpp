#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QGraphicsDropShadowEffect>
MainWindow::MainWindow(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::MainWindow)
    ,buttonGroup(nullptr)
{
    ui->setupUi(this);
    buttonGroup = new QButtonGroup();
    buttonGroup->addButton(ui->userManager_Btn,1);
    buttonGroup->addButton(ui->evaluate_Btn,2);
    buttonGroup->addButton(ui->training_Btn,3);
    buttonGroup->addButton(ui->record_Btn,4);
    buttonGroup->addButton(ui->setting_Btn,5);

    QGraphicsDropShadowEffect * shadowEffect = new QGraphicsDropShadowEffect();
    shadowEffect->setYOffset(2);
    shadowEffect->setBlurRadius(12);
    shadowEffect->setColor(QColor(0,0,0,51));
    ui->nav_GroupBox->setGraphicsEffect(shadowEffect);

    ui->title_groupBox->setGraphicsEffect(shadowEffect);

}

MainWindow::~MainWindow()
{
    delete ui;
}

