#include "mainwindow.h"
#include "ui_mainwindow.h"

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

}

MainWindow::~MainWindow()
{
    delete ui;
}

