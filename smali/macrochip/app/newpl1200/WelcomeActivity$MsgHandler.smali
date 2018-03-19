.class Lmacrochip/app/newpl1200/WelcomeActivity$MsgHandler;
.super Landroid/os/Handler;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MsgHandler"
.end annotation


# instance fields
.field TextViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmacrochip/app/newpl1200/WelcomeActivity$MsgHandler;->TextViews:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/WelcomeActivity$MsgHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 117
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 121
    iget-object v4, p0, Lmacrochip/app/newpl1200/WelcomeActivity$MsgHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 122
    .local v0, "activity":Landroid/app/Activity;
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 123
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 136
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-void

    .line 125
    .restart local v0    # "activity":Landroid/app/Activity;
    :pswitch_0
    const v4, 0x7f0b0018

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Let/song/ui/widgets/ETButton;

    .local v3, "start":Let/song/ui/widgets/ETButton;
    move-object v4, v0

    .line 126
    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v4, 0x7f0b0017

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Let/song/ui/widgets/ETButton;

    .local v1, "help":Let/song/ui/widgets/ETButton;
    move-object v4, v0

    .line 129
    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v4, 0x7f0b0016

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Let/song/ui/widgets/ETButton;

    .line 132
    .local v2, "setting":Let/song/ui/widgets/ETButton;
    check-cast v0, Landroid/view/View$OnClickListener;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v2, v0}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Let/song/ui/widgets/ETButton;->setVisibility(I)V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
