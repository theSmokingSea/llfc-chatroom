#include "applyfriend.h"
#include "ui_applyfriend.h"

ApplyFriend::ApplyFriend(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::ApplyFriend)
{
    ui->setupUi(this);
    // 隐藏对话框标题栏
    setWindowFlags(windowFlags() | Qt::FramelessWindowHint);
    this->setObjectName("ApplyFriend");
    this->setModal(true);
    ui->name_ed->setPlaceholderText(tr("恋恋风辰"));
    connect(ui->more_lb, &ClickedOnceLabel::clicked, this, &ApplyFriend::ShowMoreLabel);
}

ApplyFriend::~ApplyFriend()
{
    delete ui;
}

void ApplyFriend::InitTestLbs()
{

}

void ApplyFriend::ShowMoreLabel()
{

}
