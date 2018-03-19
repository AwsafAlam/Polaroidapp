.class public Lmacrochip/app/newpl1200/VideoPlayByOpengl;
.super Lmacrochip/app/newpl1200/OpenglActivity;
.source "VideoPlayByOpengl.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mExitTime:J

.field private mPreviewView:Lcom/app/view/PreviewView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lmacrochip/app/newpl1200/OpenglActivity;-><init>()V

    return-void
.end method

.method private createFilePath()V
    .locals 5

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 54
    const-string v4, "mounted"

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 56
    .local v2, "sd":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/app/view/PreviewView;->getSettingPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fh/lib/FHSDK;->setShotPath(Ljava/lang/String;)V

    .line 66
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "sd":Ljava/io/File;
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v3, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mContext:Landroid/content/Context;

    const v4, 0x7f080021

    invoke-virtual {p0, v4}, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/app/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->requestWindowFeature(I)Z

    .line 30
    invoke-super {p0, p1}, Lmacrochip/app/newpl1200/OpenglActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    iput-object p0, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {}, Lcom/app/util/MyApplication;->getInstance()Lcom/app/util/MyApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/app/util/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 36
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 37
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 39
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->playInit()V

    .line 41
    new-instance v0, Lcom/app/view/PreviewView;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mPreviewView:Lcom/app/view/PreviewView;

    .line 42
    iget-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mPreviewView:Lcom/app/view/PreviewView;

    sget-object v1, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/app/view/PreviewView;->layoutInit(Landroid/view/ViewGroup;)V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mPreviewView:Lcom/app/view/PreviewView;

    sget-object v1, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/app/view/PreviewView;->layoutUnInit(Landroid/view/ViewGroup;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mPreviewView:Lcom/app/view/PreviewView;

    .line 113
    invoke-super {p0}, Lmacrochip/app/newpl1200/OpenglActivity;->onDestroy()V

    .line 114
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    .line 69
    if-ne p1, v6, :cond_4

    .line 70
    sget v0, Lcom/fh/lib/PlayInfo;->playType:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/fh/lib/PlayInfo;->playType:I

    if-ne v0, v6, :cond_1

    :cond_0
    move v0, v1

    .line 107
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mExitTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 78
    iget-object v2, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mContext:Landroid/content/Context;

    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/app/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mExitTime:J

    move v0, v1

    .line 80
    goto :goto_0

    .line 84
    :cond_2
    sget v0, Lcom/fh/lib/PlayInfo;->playType:I

    if-eq v0, v1, :cond_3

    sget v0, Lcom/fh/lib/PlayInfo;->playType:I

    if-eq v0, v6, :cond_3

    .line 94
    sget v0, Lcom/fh/lib/PlayInfo;->playType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 95
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->finish()V

    :cond_3
    move v0, v1

    .line 96
    goto :goto_0

    .line 99
    :cond_4
    const/16 v0, 0x52

    if-ne p1, v0, :cond_5

    .line 100
    iget-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mPreviewView:Lcom/app/view/PreviewView;

    invoke-virtual {v0}, Lcom/app/view/PreviewView;->getLayoutMenuShow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    iget-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mPreviewView:Lcom/app/view/PreviewView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/app/view/PreviewView;->setLayoutMenuShow(Z)V

    .line 107
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Lmacrochip/app/newpl1200/OpenglActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 103
    :cond_6
    iget-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mPreviewView:Lcom/app/view/PreviewView;

    invoke-virtual {v0, v1}, Lcom/app/view/PreviewView;->setLayoutMenuShow(Z)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/app/util/log;->e(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mPreviewView:Lcom/app/view/PreviewView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/app/view/PreviewView;->SetActiveCheckSSIDThread(Z)V

    .line 126
    invoke-super {p0}, Lmacrochip/app/newpl1200/OpenglActivity;->onPause()V

    .line 127
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mPreviewView:Lcom/app/view/PreviewView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/app/view/PreviewView;->SetActiveCheckSSIDThread(Z)V

    .line 119
    invoke-super {p0}, Lmacrochip/app/newpl1200/OpenglActivity;->onResume()V

    .line 120
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 130
    invoke-super {p0, p1}, Lmacrochip/app/newpl1200/OpenglActivity;->onWindowFocusChanged(Z)V

    .line 132
    if-eqz p1, :cond_0

    .line 134
    sget v0, Lcom/fh/lib/PlayInfo;->playType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayByOpengl;->mPreviewView:Lcom/app/view/PreviewView;

    invoke-virtual {v0}, Lcom/app/view/PreviewView;->leftRockerRefresh()V

    .line 137
    :cond_0
    return-void
.end method

.method public playInit()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/fh/lib/PlayInfo;

    invoke-direct {v0}, Lcom/fh/lib/PlayInfo;-><init>()V

    invoke-static {v0}, Lcom/fh/lib/FHSDK;->setPlayInfo(Lcom/fh/lib/PlayInfo;)I

    .line 50
    return-void
.end method
