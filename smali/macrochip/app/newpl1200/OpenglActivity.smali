.class public Lmacrochip/app/newpl1200/OpenglActivity;
.super Landroid/app/Activity;
.source "OpenglActivity.java"


# static fields
.field protected static mLayout:Landroid/view/ViewGroup;


# instance fields
.field private TAG:Ljava/lang/String;

.field private glFrameSurface:Lcom/android/opengles/GLFrameSurface;

.field public mContext:Landroid/content/Context;

.field public mFrameRender:Lcom/android/opengles/GLFrameRenderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const-string v0, "MyMediaCodec"

    iput-object v0, p0, Lmacrochip/app/newpl1200/OpenglActivity;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 75
    sget v0, Lcom/fh/lib/PlayInfo;->decodeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 77
    invoke-static {}, Lcom/app/Interface/MyMediaCodec;->getInstance()Lcom/app/Interface/MyMediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/app/Interface/MyMediaCodec;->init(Lcom/android/opengles/GLFrameRenderer;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/app/Interface/MyMediaCodec;->getInstance()Lcom/app/Interface/MyMediaCodec;

    move-result-object v0

    iget-object v1, p0, Lmacrochip/app/newpl1200/OpenglActivity;->mFrameRender:Lcom/android/opengles/GLFrameRenderer;

    invoke-virtual {v0, v1}, Lcom/app/Interface/MyMediaCodec;->init(Lcom/android/opengles/GLFrameRenderer;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmacrochip/app/newpl1200/OpenglActivity;->requestWindowFeature(I)Z

    .line 39
    iput-object p0, p0, Lmacrochip/app/newpl1200/OpenglActivity;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 41
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/OpenglActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 43
    sget v1, Lcom/fh/lib/PlayInfo;->decodeType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 52
    new-instance v1, Lcom/android/opengles/GLFrameSurface;

    invoke-direct {v1, p0}, Lcom/android/opengles/GLFrameSurface;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmacrochip/app/newpl1200/OpenglActivity;->glFrameSurface:Lcom/android/opengles/GLFrameSurface;

    .line 53
    iget-object v1, p0, Lmacrochip/app/newpl1200/OpenglActivity;->glFrameSurface:Lcom/android/opengles/GLFrameSurface;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/opengles/GLFrameSurface;->setEGLContextClientVersion(I)V

    .line 54
    new-instance v1, Lcom/android/opengles/GLFrameRenderer;

    iget-object v2, p0, Lmacrochip/app/newpl1200/OpenglActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lmacrochip/app/newpl1200/OpenglActivity;->glFrameSurface:Lcom/android/opengles/GLFrameSurface;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/opengles/GLFrameRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Landroid/util/DisplayMetrics;)V

    iput-object v1, p0, Lmacrochip/app/newpl1200/OpenglActivity;->mFrameRender:Lcom/android/opengles/GLFrameRenderer;

    .line 55
    iget-object v1, p0, Lmacrochip/app/newpl1200/OpenglActivity;->glFrameSurface:Lcom/android/opengles/GLFrameSurface;

    iget-object v2, p0, Lmacrochip/app/newpl1200/OpenglActivity;->mFrameRender:Lcom/android/opengles/GLFrameRenderer;

    invoke-virtual {v1, v2}, Lcom/android/opengles/GLFrameSurface;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 57
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmacrochip/app/newpl1200/OpenglActivity;->mLayout:Landroid/view/ViewGroup;

    .line 58
    sget-object v1, Lmacrochip/app/newpl1200/OpenglActivity;->mLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lmacrochip/app/newpl1200/OpenglActivity;->glFrameSurface:Lcom/android/opengles/GLFrameSurface;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    sget-object v1, Lmacrochip/app/newpl1200/OpenglActivity;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lmacrochip/app/newpl1200/OpenglActivity;->setContentView(Landroid/view/View;)V

    .line 65
    invoke-static {}, Lcom/app/util/MyApplication;->getInstance()Lcom/app/util/MyApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/app/util/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 67
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/OpenglActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 68
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/OpenglActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 70
    invoke-direct {p0}, Lmacrochip/app/newpl1200/OpenglActivity;->init()V

    .line 72
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lmacrochip/app/newpl1200/OpenglActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/app/Interface/MyMediaCodec;->getInstance()Lcom/app/Interface/MyMediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/Interface/MyMediaCodec;->unInit()V

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 105
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lmacrochip/app/newpl1200/OpenglActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 98
    iget-object v0, p0, Lmacrochip/app/newpl1200/OpenglActivity;->glFrameSurface:Lcom/android/opengles/GLFrameSurface;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lmacrochip/app/newpl1200/OpenglActivity;->glFrameSurface:Lcom/android/opengles/GLFrameSurface;

    invoke-virtual {v0}, Lcom/android/opengles/GLFrameSurface;->unRigisterListener()V

    .line 100
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lmacrochip/app/newpl1200/OpenglActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 90
    iget-object v0, p0, Lmacrochip/app/newpl1200/OpenglActivity;->glFrameSurface:Lcom/android/opengles/GLFrameSurface;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lmacrochip/app/newpl1200/OpenglActivity;->glFrameSurface:Lcom/android/opengles/GLFrameSurface;

    invoke-virtual {v0}, Lcom/android/opengles/GLFrameSurface;->rigisterListener()V

    .line 92
    :cond_0
    return-void
.end method
