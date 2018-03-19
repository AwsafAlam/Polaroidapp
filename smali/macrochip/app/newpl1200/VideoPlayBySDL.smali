.class public Lmacrochip/app/newpl1200/VideoPlayBySDL;
.super Lcom/fh/lib/SDLActivity;
.source "VideoPlayBySDL.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mExitTime:J

.field private mPreviewView:Lcom/app/view/PreviewView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/fh/lib/SDLActivity;-><init>()V

    return-void
.end method

.method private createFilePath()V
    .locals 5

    .prologue
    .line 58
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 59
    const-string v4, "mounted"

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 61
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

    .line 62
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fh/lib/FHSDK;->setShotPath(Ljava/lang/String;)V

    .line 71
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "sd":Ljava/io/File;
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v3, p0, Lmacrochip/app/newpl1200/VideoPlayBySDL;->mContext:Landroid/content/Context;

    const v4, 0x7f080021

    invoke-virtual {p0, v4}, Lmacrochip/app/newpl1200/VideoPlayBySDL;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/app/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/fh/lib/SDLActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 86
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/VideoPlayBySDL;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/VideoPlayBySDL;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 93
    :cond_0
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/VideoPlayBySDL;->setVideoShowRect()V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/VideoPlayBySDL;->requestWindowFeature(I)Z

    .line 30
    invoke-super {p0, p1}, Lcom/fh/lib/SDLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    iput-object p0, p0, Lmacrochip/app/newpl1200/VideoPlayBySDL;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {}, Lcom/app/util/MyApplication;->getInstance()Lcom/app/util/MyApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/app/util/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 39
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/VideoPlayBySDL;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 40
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/VideoPlayBySDL;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 42
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/VideoPlayBySDL;->playInit()V

    .line 44
    new-instance v0, Lcom/app/view/PreviewView;

    invoke-direct {v0, p0}, Lcom/app/view/PreviewView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayBySDL;->mPreviewView:Lcom/app/view/PreviewView;

    .line 45
    iget-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayBySDL;->mPreviewView:Lcom/app/view/PreviewView;

    sget-object v1, Lmacrochip/app/newpl1200/VideoPlayBySDL;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/app/view/PreviewView;->layoutInit(Landroid/view/ViewGroup;)V

    .line 47
    invoke-static {}, Lcom/app/Interface/MyMediaCodec;->getInstance()Lcom/app/Interface/MyMediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/app/Interface/MyMediaCodec;->init(Lcom/android/opengles/GLFrameRenderer;)V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/app/Interface/MyMediaCodec;->getInstance()Lcom/app/Interface/MyMediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/Interface/MyMediaCodec;->unInit()V

    .line 116
    iget-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayBySDL;->mPreviewView:Lcom/app/view/PreviewView;

    sget-object v1, Lmacrochip/app/newpl1200/VideoPlayBySDL;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/app/view/PreviewView;->layoutUnInit(Landroid/view/ViewGroup;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayBySDL;->mPreviewView:Lcom/app/view/PreviewView;

    .line 118
    invoke-super {p0}, Lcom/fh/lib/SDLActivity;->onDestroy()V

    .line 119
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x1

    .line 97
    if-ne p1, v2, :cond_1

    .line 98
    sget v1, Lcom/fh/lib/PlayInfo;->playType:I

    if-eq v1, v0, :cond_0

    sget v1, Lcom/fh/lib/PlayInfo;->playType:I

    if-ne v1, v2, :cond_2

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    const/16 v1, 0x52

    if-ne p1, v1, :cond_2

    .line 103
    iget-object v1, p0, Lmacrochip/app/newpl1200/VideoPlayBySDL;->mPreviewView:Lcom/app/view/PreviewView;

    invoke-virtual {v1}, Lcom/app/view/PreviewView;->getLayoutMenuShow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    iget-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayBySDL;->mPreviewView:Lcom/app/view/PreviewView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/app/view/PreviewView;->setLayoutMenuShow(Z)V

    .line 110
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/fh/lib/SDLActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 106
    :cond_3
    iget-object v1, p0, Lmacrochip/app/newpl1200/VideoPlayBySDL;->mPreviewView:Lcom/app/view/PreviewView;

    invoke-virtual {v1, v0}, Lcom/app/view/PreviewView;->setLayoutMenuShow(Z)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/fh/lib/SDLActivity;->onPause()V

    .line 129
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcom/fh/lib/SDLActivity;->onResume()V

    .line 124
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/fh/lib/SDLActivity;->onWindowFocusChanged(Z)V

    .line 134
    if-eqz p1, :cond_0

    .line 136
    sget v0, Lcom/fh/lib/PlayInfo;->playType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lmacrochip/app/newpl1200/VideoPlayBySDL;->mPreviewView:Lcom/app/view/PreviewView;

    invoke-virtual {v0}, Lcom/app/view/PreviewView;->leftRockerRefresh()V

    .line 140
    :cond_0
    return-void
.end method

.method public playInit()V
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/VideoPlayBySDL;->setVideoShowRect()V

    .line 54
    new-instance v0, Lcom/fh/lib/PlayInfo;

    invoke-direct {v0}, Lcom/fh/lib/PlayInfo;-><init>()V

    invoke-static {v0}, Lcom/fh/lib/FHSDK;->setPlayInfo(Lcom/fh/lib/PlayInfo;)I

    .line 55
    return-void
.end method

.method public setVideoShowRect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    const/4 v0, 0x1

    .line 74
    .local v0, "isFill":Z
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 75
    .local v1, "rect":Landroid/graphics/Rect;
    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 76
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/VideoPlayBySDL;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 77
    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 78
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/VideoPlayBySDL;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 79
    invoke-static {v1, v0}, Lcom/fh/lib/FHSDK;->setShowRect(Landroid/graphics/Rect;Z)Z

    .line 82
    return-void
.end method
