.class public Lcom/android/opengles/GLFrameRenderer;
.super Ljava/lang/Object;
.source "GLFrameRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/opengles/GLFrameRenderer$RGBRes;,
        Lcom/android/opengles/GLFrameRenderer$SnapshotThread;
    }
.end annotation


# static fields
.field private static final DISPLAY_TYPE_RGB:I = 0x1

.field private static final DISPLAY_TYPE_YUV:I = 0x0

.field private static final H_OFFSET_BASE:F = 1000.0f

.field private static final STEP_BASE_FAST:F = 200.0f

.field private static final STEP_BASE_SLOW:F = 100.0f

.field private static final STEP_OFFSET:F = 5.0f

.field public static bMixMode:Z

.field public static bSnapshot:Z

.field public static circleR:F

.field public static circleX:F

.field public static circleY:F

.field public static ctrlIndex:I

.field public static curIndex:I

.field public static depth:F

.field public static displayMode:I

.field public static eyeMode:I

.field public static hBuffer:I

.field public static hDegrees:F

.field public static hEyeDegrees:[F

.field public static hOffset:F

.field public static hWin:I

.field public static hWinMixMode:[I

.field private static instance:Lcom/android/opengles/GLFrameRenderer;

.field public static final isDebugMode:Z

.field public static isDoubleClick:Z

.field public static isZoomIn:Z

.field public static mDrawHeight:I

.field public static mDrawWidth:I

.field public static mRgbRes:[Lcom/android/opengles/GLFrameRenderer$RGBRes;

.field public static mScreenHeight:I

.field public static mScreenWidth:I

.field public static modeOffset:I

.field public static resChanged:Z

.field public static rgbResIndex:I

.field public static scrollStep:F

.field public static vDegrees:F

.field private static velocityX:F

.field private static velocityY:F


# instance fields
.field private bIsTime2Draw:Z

.field private bSurfaceChanged:Z

.field private bSurfaceCreate:Z

.field private bUpdated:Z

.field public dataFun:Lcom/fh/lib/Define$YUVDataCallBackInterface;

.field private drawCount:I

.field private frameBuf:[B

.field private lastDepth:F

.field private lastHDegrees:F

.field private lastHOffset:F

.field private lastShowMode:I

.field private lastVDegrees:F

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSnapshotThread:Lcom/android/opengles/GLFrameRenderer$SnapshotThread;

.field private mTargetSurface:Landroid/opengl/GLSurfaceView;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field requestRender:Ljava/lang/Runnable;

.field scaleView:Ljava/lang/Runnable;

.field private view_h:I

.field private view_w:I

.field private view_x:I

.field private view_y:I

.field private yuv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/opengles/GLFrameRenderer$RGBRes;

    sput-object v0, Lcom/android/opengles/GLFrameRenderer;->mRgbRes:[Lcom/android/opengles/GLFrameRenderer$RGBRes;

    .line 53
    sput v1, Lcom/android/opengles/GLFrameRenderer;->rgbResIndex:I

    .line 64
    sput v1, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    .line 65
    sput-boolean v1, Lcom/android/opengles/GLFrameRenderer;->bSnapshot:Z

    .line 67
    sput v2, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    .line 68
    sput v2, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    .line 69
    sput v2, Lcom/android/opengles/GLFrameRenderer;->depth:F

    .line 71
    sput v2, Lcom/android/opengles/GLFrameRenderer;->hOffset:F

    .line 72
    sput v2, Lcom/android/opengles/GLFrameRenderer;->velocityX:F

    .line 73
    sput v2, Lcom/android/opengles/GLFrameRenderer;->velocityY:F

    .line 74
    sput v2, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    .line 76
    sput v1, Lcom/android/opengles/GLFrameRenderer;->modeOffset:I

    .line 77
    sput v1, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    .line 78
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/opengles/GLFrameRenderer;->hEyeDegrees:[F

    .line 80
    sput v1, Lcom/android/opengles/GLFrameRenderer;->curIndex:I

    .line 81
    sput-boolean v1, Lcom/android/opengles/GLFrameRenderer;->isDoubleClick:Z

    .line 82
    sput-boolean v1, Lcom/android/opengles/GLFrameRenderer;->isZoomIn:Z

    .line 83
    sput v1, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    sput v1, Lcom/android/opengles/GLFrameRenderer;->hBuffer:I

    .line 84
    new-array v0, v3, [I

    sput-object v0, Lcom/android/opengles/GLFrameRenderer;->hWinMixMode:[I

    .line 87
    sput-boolean v1, Lcom/android/opengles/GLFrameRenderer;->bMixMode:Z

    .line 88
    sput v1, Lcom/android/opengles/GLFrameRenderer;->ctrlIndex:I

    .line 89
    sput-boolean v1, Lcom/android/opengles/GLFrameRenderer;->resChanged:Z

    .line 94
    return-void

    .line 78
    nop

    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
        0x43340000    # 180.0f
        0x43870000    # 270.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/android/opengles/GLFrameRenderer;->bSurfaceCreate:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/opengles/GLFrameRenderer;->bSurfaceChanged:Z

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/opengles/GLFrameRenderer;->lastShowMode:I

    .line 58
    iput-object v3, p0, Lcom/android/opengles/GLFrameRenderer;->mHandler:Landroid/os/Handler;

    .line 61
    iput v1, p0, Lcom/android/opengles/GLFrameRenderer;->drawCount:I

    .line 62
    iput-object v3, p0, Lcom/android/opengles/GLFrameRenderer;->frameBuf:[B

    .line 85
    iput-boolean v1, p0, Lcom/android/opengles/GLFrameRenderer;->bUpdated:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/opengles/GLFrameRenderer;->bIsTime2Draw:Z

    .line 90
    iput v2, p0, Lcom/android/opengles/GLFrameRenderer;->lastVDegrees:F

    .line 91
    iput v2, p0, Lcom/android/opengles/GLFrameRenderer;->lastHDegrees:F

    .line 92
    iput v2, p0, Lcom/android/opengles/GLFrameRenderer;->lastDepth:F

    .line 93
    iput v2, p0, Lcom/android/opengles/GLFrameRenderer;->lastHOffset:F

    .line 125
    new-instance v0, Lcom/android/opengles/GLFrameRenderer$1;

    invoke-direct {v0, p0}, Lcom/android/opengles/GLFrameRenderer$1;-><init>(Lcom/android/opengles/GLFrameRenderer;)V

    iput-object v0, p0, Lcom/android/opengles/GLFrameRenderer;->scaleView:Ljava/lang/Runnable;

    .line 165
    new-instance v0, Lcom/android/opengles/GLFrameRenderer$2;

    invoke-direct {v0, p0}, Lcom/android/opengles/GLFrameRenderer$2;-><init>(Lcom/android/opengles/GLFrameRenderer;)V

    iput-object v0, p0, Lcom/android/opengles/GLFrameRenderer;->requestRender:Ljava/lang/Runnable;

    .line 541
    new-instance v0, Lcom/android/opengles/GLFrameRenderer$3;

    invoke-direct {v0, p0}, Lcom/android/opengles/GLFrameRenderer$3;-><init>(Lcom/android/opengles/GLFrameRenderer;)V

    iput-object v0, p0, Lcom/android/opengles/GLFrameRenderer;->dataFun:Lcom/fh/lib/Define$YUVDataCallBackInterface;

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;Landroid/util/DisplayMetrics;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surface"    # Landroid/opengl/GLSurfaceView;
    .param p3, "dm"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/android/opengles/GLFrameRenderer;->bSurfaceCreate:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/opengles/GLFrameRenderer;->bSurfaceChanged:Z

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/opengles/GLFrameRenderer;->lastShowMode:I

    .line 58
    iput-object v3, p0, Lcom/android/opengles/GLFrameRenderer;->mHandler:Landroid/os/Handler;

    .line 61
    iput v1, p0, Lcom/android/opengles/GLFrameRenderer;->drawCount:I

    .line 62
    iput-object v3, p0, Lcom/android/opengles/GLFrameRenderer;->frameBuf:[B

    .line 85
    iput-boolean v1, p0, Lcom/android/opengles/GLFrameRenderer;->bUpdated:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/opengles/GLFrameRenderer;->bIsTime2Draw:Z

    .line 90
    iput v2, p0, Lcom/android/opengles/GLFrameRenderer;->lastVDegrees:F

    .line 91
    iput v2, p0, Lcom/android/opengles/GLFrameRenderer;->lastHDegrees:F

    .line 92
    iput v2, p0, Lcom/android/opengles/GLFrameRenderer;->lastDepth:F

    .line 93
    iput v2, p0, Lcom/android/opengles/GLFrameRenderer;->lastHOffset:F

    .line 125
    new-instance v0, Lcom/android/opengles/GLFrameRenderer$1;

    invoke-direct {v0, p0}, Lcom/android/opengles/GLFrameRenderer$1;-><init>(Lcom/android/opengles/GLFrameRenderer;)V

    iput-object v0, p0, Lcom/android/opengles/GLFrameRenderer;->scaleView:Ljava/lang/Runnable;

    .line 165
    new-instance v0, Lcom/android/opengles/GLFrameRenderer$2;

    invoke-direct {v0, p0}, Lcom/android/opengles/GLFrameRenderer$2;-><init>(Lcom/android/opengles/GLFrameRenderer;)V

    iput-object v0, p0, Lcom/android/opengles/GLFrameRenderer;->requestRender:Ljava/lang/Runnable;

    .line 541
    new-instance v0, Lcom/android/opengles/GLFrameRenderer$3;

    invoke-direct {v0, p0}, Lcom/android/opengles/GLFrameRenderer$3;-><init>(Lcom/android/opengles/GLFrameRenderer;)V

    iput-object v0, p0, Lcom/android/opengles/GLFrameRenderer;->dataFun:Lcom/fh/lib/Define$YUVDataCallBackInterface;

    .line 98
    iput-object p1, p0, Lcom/android/opengles/GLFrameRenderer;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/android/opengles/GLFrameRenderer;->mTargetSurface:Landroid/opengl/GLSurfaceView;

    .line 100
    iget v0, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/android/opengles/GLFrameRenderer;->mScreenWidth:I

    .line 101
    iget v0, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/android/opengles/GLFrameRenderer;->mScreenHeight:I

    .line 103
    iget-object v0, p0, Lcom/android/opengles/GLFrameRenderer;->dataFun:Lcom/fh/lib/Define$YUVDataCallBackInterface;

    invoke-static {v0}, Lcom/fh/lib/FHSDK;->registerUpdateCallBack(Lcom/fh/lib/Define$YUVDataCallBackInterface;)V

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/opengles/GLFrameRenderer;->mHandler:Landroid/os/Handler;

    .line 108
    iget-object v0, p0, Lcom/android/opengles/GLFrameRenderer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/opengles/GLFrameRenderer;->requestRender:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    new-instance v0, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;

    invoke-direct {v0, p0}, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;-><init>(Lcom/android/opengles/GLFrameRenderer;)V

    iput-object v0, p0, Lcom/android/opengles/GLFrameRenderer;->mSnapshotThread:Lcom/android/opengles/GLFrameRenderer$SnapshotThread;

    .line 111
    return-void
.end method

.method static synthetic access$0(Lcom/android/opengles/GLFrameRenderer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/opengles/GLFrameRenderer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1()F
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/android/opengles/GLFrameRenderer;->velocityX:F

    return v0
.end method

.method static synthetic access$10(Lcom/android/opengles/GLFrameRenderer;)[B
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/opengles/GLFrameRenderer;->yuv:[B

    return-object v0
.end method

.method static synthetic access$11(Lcom/android/opengles/GLFrameRenderer;Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/opengles/GLFrameRenderer;->bUpdated:Z

    return-void
.end method

.method static synthetic access$12(Lcom/android/opengles/GLFrameRenderer;)[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/opengles/GLFrameRenderer;->frameBuf:[B

    return-object v0
.end method

.method static synthetic access$13(Lcom/android/opengles/GLFrameRenderer;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    return v0
.end method

.method static synthetic access$14(Lcom/android/opengles/GLFrameRenderer;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    return v0
.end method

.method static synthetic access$2(F)V
    .locals 0

    .prologue
    .line 72
    sput p0, Lcom/android/opengles/GLFrameRenderer;->velocityX:F

    return-void
.end method

.method static synthetic access$3()F
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/android/opengles/GLFrameRenderer;->velocityY:F

    return v0
.end method

.method static synthetic access$4(F)V
    .locals 0

    .prologue
    .line 73
    sput p0, Lcom/android/opengles/GLFrameRenderer;->velocityY:F

    return-void
.end method

.method static synthetic access$5(Lcom/android/opengles/GLFrameRenderer;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/opengles/GLFrameRenderer;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$6(Lcom/android/opengles/GLFrameRenderer;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/opengles/GLFrameRenderer;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$7(Lcom/android/opengles/GLFrameRenderer;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/android/opengles/GLFrameRenderer;->mVideoWidth:I

    return-void
.end method

.method static synthetic access$8(Lcom/android/opengles/GLFrameRenderer;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/android/opengles/GLFrameRenderer;->mVideoHeight:I

    return-void
.end method

.method static synthetic access$9(Lcom/android/opengles/GLFrameRenderer;[B)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/opengles/GLFrameRenderer;->yuv:[B

    return-void
.end method

.method public static getInstance()Lcom/android/opengles/GLFrameRenderer;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/opengles/GLFrameRenderer;->instance:Lcom/android/opengles/GLFrameRenderer;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/android/opengles/GLFrameRenderer;

    invoke-direct {v0}, Lcom/android/opengles/GLFrameRenderer;-><init>()V

    sput-object v0, Lcom/android/opengles/GLFrameRenderer;->instance:Lcom/android/opengles/GLFrameRenderer;

    .line 123
    :cond_0
    sget-object v0, Lcom/android/opengles/GLFrameRenderer;->instance:Lcom/android/opengles/GLFrameRenderer;

    return-object v0
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 358
    monitor-enter p0

    .line 361
    :try_start_0
    sget v6, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_d

    .line 363
    sget v6, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    sget v7, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v7}, Lcom/fh/lib/FHSDK;->getDisplayMode(I)I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 365
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->unbind(I)Z

    .line 366
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->destroyWindow(I)Z

    .line 367
    sget v6, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->createWindow(I)I

    move-result v6

    sput v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    .line 368
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    sget v7, Lcom/android/opengles/GLFrameRenderer;->hBuffer:I

    invoke-static {v6, v7}, Lcom/fh/lib/FHSDK;->bind(II)Z

    .line 370
    :cond_0
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    sget v7, Lcom/android/opengles/GLFrameRenderer;->circleX:F

    sget v8, Lcom/android/opengles/GLFrameRenderer;->circleY:F

    sget v9, Lcom/android/opengles/GLFrameRenderer;->circleR:F

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->setStandardCircle(IFFF)Z

    .line 373
    iget-object v6, p0, Lcom/android/opengles/GLFrameRenderer;->yuv:[B

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/android/opengles/GLFrameRenderer;->bUpdated:Z

    if-eqz v6, :cond_1

    .line 376
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hBuffer:I

    iget-object v7, p0, Lcom/android/opengles/GLFrameRenderer;->yuv:[B

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->mVideoWidth:I

    iget v9, p0, Lcom/android/opengles/GLFrameRenderer;->mVideoHeight:I

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->update(I[BII)Z

    .line 377
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/opengles/GLFrameRenderer;->bUpdated:Z

    .line 378
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/opengles/GLFrameRenderer;->bIsTime2Draw:Z

    .line 382
    :cond_1
    iget-boolean v6, p0, Lcom/android/opengles/GLFrameRenderer;->bIsTime2Draw:Z

    if-nez v6, :cond_2

    .line 383
    monitor-exit p0

    .line 533
    :goto_0
    return-void

    .line 385
    :cond_2
    invoke-static {}, Lcom/fh/lib/FHSDK;->clear()Z

    .line 388
    sget-boolean v6, Lcom/android/opengles/GLFrameRenderer;->bMixMode:Z

    if-eqz v6, :cond_7

    .line 390
    const/4 v6, 0x4

    new-array v4, v6, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    aput v7, v4, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    aput v7, v4, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 391
    .local v4, "x":[I
    const/4 v6, 0x4

    new-array v5, v6, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    aput v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 392
    .local v5, "y":[I
    const/4 v2, 0x0

    .line 393
    .local v2, "mode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v12, :cond_5

    .line 478
    .end local v1    # "i":I
    .end local v2    # "mode":I
    .end local v4    # "x":[I
    .end local v5    # "y":[I
    :cond_3
    :goto_2
    sget-boolean v6, Lcom/android/opengles/GLFrameRenderer;->bSnapshot:Z

    if-eqz v6, :cond_4

    .line 480
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/opengles/GLFrameRenderer;->bSnapshot:Z

    .line 498
    iget v6, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    iget v9, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->snapshot(IIII)[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/opengles/GLFrameRenderer;->frameBuf:[B

    .line 499
    iget-object v6, p0, Lcom/android/opengles/GLFrameRenderer;->mSnapshotThread:Lcom/android/opengles/GLFrameRenderer$SnapshotThread;

    invoke-virtual {v6}, Lcom/android/opengles/GLFrameRenderer$SnapshotThread;->start()V

    .line 533
    :cond_4
    :goto_3
    monitor-exit p0

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 395
    .restart local v1    # "i":I
    .restart local v2    # "mode":I
    .restart local v4    # "x":[I
    .restart local v5    # "y":[I
    :cond_5
    :try_start_1
    sget-object v6, Lcom/android/opengles/GLFrameRenderer;->hWinMixMode:[I

    aget v6, v6, v1

    sget v7, Lcom/android/opengles/GLFrameRenderer;->circleX:F

    sget v8, Lcom/android/opengles/GLFrameRenderer;->circleY:F

    sget v9, Lcom/android/opengles/GLFrameRenderer;->circleR:F

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->setStandardCircle(IFFF)Z

    .line 396
    aget v6, v4, v1

    aget v7, v5, v1

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    div-int/lit8 v9, v9, 0x2

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->viewport(IIII)Z

    .line 397
    if-ne v10, v1, :cond_6

    .line 399
    sget-object v6, Lcom/android/opengles/GLFrameRenderer;->hWinMixMode:[I

    aget v6, v6, v1

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/fh/lib/FHSDK;->setImagingType(II)Z

    .line 406
    :cond_6
    sget-object v6, Lcom/android/opengles/GLFrameRenderer;->hWinMixMode:[I

    aget v6, v6, v1

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->draw(I)Z

    .line 393
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    .end local v1    # "i":I
    .end local v2    # "mode":I
    .end local v4    # "x":[I
    .end local v5    # "y":[I
    :cond_7
    sget v6, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-eqz v6, :cond_8

    const/4 v6, 0x6

    sget v7, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-ne v6, v7, :cond_c

    .line 414
    :cond_8
    sget v6, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-nez v6, :cond_9

    .line 416
    iget v6, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    iget v9, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->viewport(IIII)Z

    .line 419
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    sget v7, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    sget v8, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    sget v9, Lcom/android/opengles/GLFrameRenderer;->depth:F

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->eyeLookAt(IFFF)Z

    .line 422
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->draw(I)Z

    goto :goto_2

    .line 424
    :cond_9
    sget v6, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-ne v10, v6, :cond_a

    .line 426
    const/4 v6, 0x4

    new-array v4, v6, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    aput v7, v4, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    aput v7, v4, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 427
    .restart local v4    # "x":[I
    const/4 v6, 0x4

    new-array v5, v6, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    aput v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 428
    .restart local v5    # "y":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v12, :cond_3

    .line 430
    aget v6, v4, v1

    aget v7, v5, v1

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    div-int/lit8 v9, v9, 0x2

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->viewport(IIII)Z

    .line 433
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    sget v7, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v7}, Lcom/fh/lib/FHSDK;->getMaxVDegress(I)F

    move-result v7

    sget v8, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    mul-int/lit8 v9, v1, 0x5a

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->eyeLookAt(IFFF)Z

    .line 436
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->draw(I)Z

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 439
    .end local v1    # "i":I
    .end local v4    # "x":[I
    .end local v5    # "y":[I
    :cond_a
    sget v6, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-ne v11, v6, :cond_b

    .line 441
    const/4 v6, 0x4

    new-array v4, v6, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    aput v7, v4, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    aput v7, v4, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 442
    .restart local v4    # "x":[I
    const/4 v6, 0x4

    new-array v5, v6, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    aput v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 443
    .restart local v5    # "y":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v12, :cond_3

    .line 445
    aget v6, v4, v1

    aget v7, v5, v1

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    div-int/lit8 v9, v9, 0x2

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->viewport(IIII)Z

    .line 446
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    sget v7, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v7}, Lcom/fh/lib/FHSDK;->getMaxVDegress(I)F

    move-result v7

    sget-object v8, Lcom/android/opengles/GLFrameRenderer;->hEyeDegrees:[F

    aget v8, v8, v1

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->eyeLookAt(IFFF)Z

    .line 447
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->draw(I)Z

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 450
    .end local v1    # "i":I
    .end local v4    # "x":[I
    .end local v5    # "y":[I
    :cond_b
    sget v6, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-ne v13, v6, :cond_3

    .line 452
    const/4 v6, 0x2

    new-array v4, v6, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    aput v7, v4, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 453
    .restart local v4    # "x":[I
    const/4 v6, 0x2

    new-array v5, v6, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    aput v7, v5, v6

    .line 454
    .restart local v5    # "y":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v11, :cond_3

    .line 456
    aget v6, v4, v1

    aget v7, v5, v1

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->viewport(IIII)Z

    .line 459
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    sget v7, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    sget v8, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->eyeLookAt(IFFF)Z

    .line 460
    sget v6, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    iput v6, p0, Lcom/android/opengles/GLFrameRenderer;->lastVDegrees:F

    .line 461
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    iput v6, p0, Lcom/android/opengles/GLFrameRenderer;->lastHDegrees:F

    .line 463
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->draw(I)Z

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 469
    .end local v1    # "i":I
    .end local v4    # "x":[I
    .end local v5    # "y":[I
    :cond_c
    iget v6, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    iget v9, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->viewport(IIII)Z

    .line 472
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    sget v7, Lcom/android/opengles/GLFrameRenderer;->hOffset:F

    invoke-static {v6, v7}, Lcom/fh/lib/FHSDK;->expandLookAt(IF)Z

    .line 475
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->draw(I)Z

    goto/16 :goto_2

    .line 505
    :cond_d
    iget-object v6, p0, Lcom/android/opengles/GLFrameRenderer;->yuv:[B

    if-eqz v6, :cond_e

    iget-boolean v6, p0, Lcom/android/opengles/GLFrameRenderer;->bUpdated:Z

    if-eqz v6, :cond_e

    .line 506
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    iget-object v7, p0, Lcom/android/opengles/GLFrameRenderer;->yuv:[B

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->mVideoWidth:I

    iget v9, p0, Lcom/android/opengles/GLFrameRenderer;->mVideoHeight:I

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->FHupdate(I[BII)Z

    .line 507
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/opengles/GLFrameRenderer;->bUpdated:Z

    .line 508
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/opengles/GLFrameRenderer;->bIsTime2Draw:Z

    .line 510
    :cond_e
    iget-boolean v6, p0, Lcom/android/opengles/GLFrameRenderer;->bIsTime2Draw:Z

    if-nez v6, :cond_f

    .line 511
    monitor-exit p0

    goto/16 :goto_0

    .line 513
    :cond_f
    invoke-static {}, Lcom/fh/lib/FHSDK;->FHclear()Z

    .line 514
    sget v6, Lcom/app/Interface/MyMediaCodec;->SHOW_MODE_3D:I

    invoke-static {}, Lcom/app/Interface/MyMediaCodec;->getInstance()Lcom/app/Interface/MyMediaCodec;

    move-result-object v7

    invoke-virtual {v7}, Lcom/app/Interface/MyMediaCodec;->getShowMode()I

    move-result v7

    if-ne v6, v7, :cond_10

    .line 516
    iget v6, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    div-int/lit8 v3, v6, 0x2

    .line 517
    .local v3, "w":I
    iget v6, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->mVideoHeight:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->mVideoWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 518
    .local v0, "h":I
    const/4 v6, 0x4

    new-array v4, v6, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    aput v7, v4, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v4, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    aput v7, v4, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v4, v6

    .line 519
    .restart local v4    # "x":[I
    const/4 v6, 0x4

    new-array v5, v6, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    aput v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 520
    .restart local v5    # "y":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, v11, :cond_4

    .line 522
    aget v6, v4, v1

    aget v7, v5, v1

    invoke-static {v6, v7, v3, v0}, Lcom/fh/lib/FHSDK;->FHviewport(IIII)Z

    .line 523
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->FHdraw(I)Z

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 528
    .end local v0    # "h":I
    .end local v1    # "i":I
    .end local v3    # "w":I
    .end local v4    # "x":[I
    .end local v5    # "y":[I
    :cond_10
    iget v6, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    iget v7, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    iget v8, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    iget v9, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    invoke-static {v6, v7, v8, v9}, Lcom/fh/lib/FHSDK;->FHviewport(IIII)Z

    .line 529
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->FHdraw(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLFrameRenderer :: onSurfaceChanged()("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/util/log;->d(Ljava/lang/String;)V

    .line 304
    iput-boolean v2, p0, Lcom/android/opengles/GLFrameRenderer;->bIsTime2Draw:Z

    .line 305
    sput p2, Lcom/android/opengles/GLFrameRenderer;->mScreenWidth:I

    .line 306
    sput p3, Lcom/android/opengles/GLFrameRenderer;->mScreenHeight:I

    .line 308
    sget v0, Lcom/android/opengles/GLFrameRenderer;->mScreenWidth:I

    sget v1, Lcom/android/opengles/GLFrameRenderer;->mScreenHeight:I

    if-ge v0, v1, :cond_2

    .line 310
    sget v0, Lcom/android/opengles/GLFrameRenderer;->mScreenWidth:I

    sput v0, Lcom/android/opengles/GLFrameRenderer;->mDrawHeight:I

    sput v0, Lcom/android/opengles/GLFrameRenderer;->mDrawWidth:I

    .line 319
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/opengles/GLFrameRenderer;->bSurfaceChanged:Z

    .line 321
    sget v0, Lcom/android/opengles/GLFrameRenderer;->mScreenWidth:I

    sget v1, Lcom/android/opengles/GLFrameRenderer;->mDrawWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/opengles/GLFrameRenderer;->view_x:I

    .line 322
    sget v0, Lcom/android/opengles/GLFrameRenderer;->mScreenHeight:I

    sget v1, Lcom/android/opengles/GLFrameRenderer;->mDrawHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/opengles/GLFrameRenderer;->view_y:I

    .line 323
    sget v0, Lcom/android/opengles/GLFrameRenderer;->mDrawWidth:I

    iput v0, p0, Lcom/android/opengles/GLFrameRenderer;->view_w:I

    .line 324
    sget v0, Lcom/android/opengles/GLFrameRenderer;->mDrawHeight:I

    iput v0, p0, Lcom/android/opengles/GLFrameRenderer;->view_h:I

    .line 326
    sget v0, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 328
    sget v0, Lcom/android/opengles/GLFrameRenderer;->mDrawWidth:I

    sget v1, Lcom/android/opengles/GLFrameRenderer;->mDrawHeight:I

    invoke-static {v0, v1}, Lcom/fh/lib/FHSDK;->init(II)Z

    .line 330
    sget v0, Lcom/android/opengles/GLFrameRenderer;->hBuffer:I

    if-nez v0, :cond_0

    .line 332
    invoke-static {v2}, Lcom/fh/lib/FHSDK;->createBuffer(I)I

    move-result v0

    sput v0, Lcom/android/opengles/GLFrameRenderer;->hBuffer:I

    .line 335
    :cond_0
    sget v0, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    if-nez v0, :cond_1

    .line 337
    sget v0, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    invoke-static {v0}, Lcom/fh/lib/FHSDK;->createWindow(I)I

    move-result v0

    sput v0, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    .line 341
    :cond_1
    sget v0, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v0}, Lcom/fh/lib/FHSDK;->unbind(I)Z

    .line 342
    sget v0, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    sget v1, Lcom/android/opengles/GLFrameRenderer;->hBuffer:I

    invoke-static {v0, v1}, Lcom/fh/lib/FHSDK;->bind(II)Z

    .line 344
    sget v0, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v0}, Lcom/fh/lib/FHSDK;->getMaxZDepth(I)F

    move-result v0

    sput v0, Lcom/android/opengles/GLFrameRenderer;->depth:F

    .line 355
    :goto_1
    return-void

    .line 314
    :cond_2
    sget v0, Lcom/android/opengles/GLFrameRenderer;->mScreenWidth:I

    sput v0, Lcom/android/opengles/GLFrameRenderer;->mDrawWidth:I

    .line 315
    sget v0, Lcom/android/opengles/GLFrameRenderer;->mScreenHeight:I

    sput v0, Lcom/android/opengles/GLFrameRenderer;->mDrawHeight:I

    goto :goto_0

    .line 348
    :cond_3
    sget v0, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    if-eqz v0, :cond_4

    .line 350
    sget v0, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v0}, Lcom/fh/lib/FHSDK;->FHunInit(I)Z

    .line 351
    sput v2, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    .line 353
    :cond_4
    sget v0, Lcom/android/opengles/GLFrameRenderer;->mDrawWidth:I

    sget v1, Lcom/android/opengles/GLFrameRenderer;->mDrawHeight:I

    invoke-static {v0, v1}, Lcom/fh/lib/FHSDK;->FHinit(II)I

    move-result v0

    sput v0, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 290
    const-string v0, "GLFrameRenderer :: onSurfaceCreated"

    invoke-static {v0}, Lcom/app/util/log;->d(Ljava/lang/String;)V

    .line 293
    const-string v0, "GLFrameRenderer :: buildProgram done"

    invoke-static {v0}, Lcom/app/util/log;->d(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/app/Interface/MyMediaCodec;->getInstance()Lcom/app/Interface/MyMediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/app/Interface/MyMediaCodec;->startPlay(Landroid/view/Surface;)V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/opengles/GLFrameRenderer;->bSurfaceCreate:Z

    .line 297
    const/4 v0, 0x0

    sput v0, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    .line 299
    return-void
.end method

.method public setvelocityX(F)V
    .locals 2
    .param p1, "velocityX"    # F

    .prologue
    .line 667
    sput p1, Lcom/android/opengles/GLFrameRenderer;->velocityX:F

    .line 668
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x453b8000    # 3000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 669
    const/high16 v0, 0x43480000    # 200.0f

    sput v0, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    .line 672
    :goto_0
    return-void

    .line 671
    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    sput v0, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    goto :goto_0
.end method

.method public setvelocityY(F)V
    .locals 2
    .param p1, "velocityY"    # F

    .prologue
    .line 676
    sput p1, Lcom/android/opengles/GLFrameRenderer;->velocityY:F

    .line 677
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x453b8000    # 3000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 678
    const/high16 v0, 0x43480000    # 200.0f

    sput v0, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    .line 681
    :goto_0
    return-void

    .line 680
    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    sput v0, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    goto :goto_0
.end method
