.class public Lcom/android/opengles/GLFrameSurface;
.super Landroid/opengl/GLSurfaceView;
.source "GLFrameSurface.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field private static final NS2S:F = 1.0E-9f

.field private static final SCALE_STEP:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "XX"


# instance fields
.field private aSensor:Landroid/hardware/Sensor;

.field accelerometerValues:[F

.field private angle:[F

.field private baseValue:F

.field private curIndex:I

.field private detector:Landroid/view/GestureDetector;

.field private flushCount:J

.field private hDegrees:F

.field private hEyeDegrees:[F

.field private hOffset:F

.field private isScaleMode:Z

.field private lastRot:I

.field private mContext:Landroid/content/Context;

.field private mFrameRender:Lcom/android/opengles/GLFrameRenderer;

.field private mSensor:Landroid/hardware/Sensor;

.field magneticFieldValues:[F

.field myGyroscope:Landroid/hardware/Sensor;

.field final myListener:Landroid/hardware/SensorEventListener;

.field private mySensorListener:Landroid/hardware/SensorEventListener;

.field mySensorManager:Landroid/hardware/SensorManager;

.field private startHDegrees:F

.field private startVDegrees:F

.field private timestamp:F

.field private vDegrees:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/high16 v0, -0x40800000    # -1.0f

    .line 51
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 26
    iput v0, p0, Lcom/android/opengles/GLFrameSurface;->hOffset:F

    .line 27
    iput v0, p0, Lcom/android/opengles/GLFrameSurface;->hDegrees:F

    .line 28
    iput v0, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    .line 29
    iput v0, p0, Lcom/android/opengles/GLFrameSurface;->baseValue:F

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->hEyeDegrees:[F

    .line 31
    iput v3, p0, Lcom/android/opengles/GLFrameSurface;->curIndex:I

    .line 32
    iput-boolean v3, p0, Lcom/android/opengles/GLFrameSurface;->isScaleMode:Z

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->angle:[F

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/opengles/GLFrameSurface;->lastRot:I

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->accelerometerValues:[F

    .line 46
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->magneticFieldValues:[F

    .line 47
    iput v2, p0, Lcom/android/opengles/GLFrameSurface;->startVDegrees:F

    .line 48
    iput v2, p0, Lcom/android/opengles/GLFrameSurface;->startHDegrees:F

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/opengles/GLFrameSurface;->flushCount:J

    .line 76
    new-instance v0, Lcom/android/opengles/GLFrameSurface$1;

    invoke-direct {v0, p0}, Lcom/android/opengles/GLFrameSurface$1;-><init>(Lcom/android/opengles/GLFrameSurface;)V

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->myListener:Landroid/hardware/SensorEventListener;

    .line 433
    new-instance v0, Lcom/android/opengles/GLFrameSurface$2;

    invoke-direct {v0, p0}, Lcom/android/opengles/GLFrameSurface$2;-><init>(Lcom/android/opengles/GLFrameSurface;)V

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->mySensorListener:Landroid/hardware/SensorEventListener;

    .line 52
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/opengles/GLFrameSurface;->setEGLContextClientVersion(I)V

    .line 53
    iput-object p1, p0, Lcom/android/opengles/GLFrameSurface;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {}, Lcom/android/opengles/GLFrameRenderer;->getInstance()Lcom/android/opengles/GLFrameRenderer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->mFrameRender:Lcom/android/opengles/GLFrameRenderer;

    .line 55
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->detector:Landroid/view/GestureDetector;

    .line 56
    iget-object v0, p0, Lcom/android/opengles/GLFrameSurface;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/opengles/GLFrameSurface;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 58
    invoke-virtual {p0, p0}, Lcom/android/opengles/GLFrameSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->mySensorManager:Landroid/hardware/SensorManager;

    .line 63
    iget-object v0, p0, Lcom/android/opengles/GLFrameSurface;->mySensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->myGyroscope:Landroid/hardware/Sensor;

    .line 67
    iget-object v0, p0, Lcom/android/opengles/GLFrameSurface;->mySensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->aSensor:Landroid/hardware/Sensor;

    .line 68
    iget-object v0, p0, Lcom/android/opengles/GLFrameSurface;->mySensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->mSensor:Landroid/hardware/Sensor;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/high16 v0, -0x40800000    # -1.0f

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v0, p0, Lcom/android/opengles/GLFrameSurface;->hOffset:F

    .line 27
    iput v0, p0, Lcom/android/opengles/GLFrameSurface;->hDegrees:F

    .line 28
    iput v0, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    .line 29
    iput v0, p0, Lcom/android/opengles/GLFrameSurface;->baseValue:F

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->hEyeDegrees:[F

    .line 31
    iput v3, p0, Lcom/android/opengles/GLFrameSurface;->curIndex:I

    .line 32
    iput-boolean v3, p0, Lcom/android/opengles/GLFrameSurface;->isScaleMode:Z

    .line 38
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->angle:[F

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/opengles/GLFrameSurface;->lastRot:I

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->accelerometerValues:[F

    .line 46
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->magneticFieldValues:[F

    .line 47
    iput v2, p0, Lcom/android/opengles/GLFrameSurface;->startVDegrees:F

    .line 48
    iput v2, p0, Lcom/android/opengles/GLFrameSurface;->startHDegrees:F

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/opengles/GLFrameSurface;->flushCount:J

    .line 76
    new-instance v0, Lcom/android/opengles/GLFrameSurface$1;

    invoke-direct {v0, p0}, Lcom/android/opengles/GLFrameSurface$1;-><init>(Lcom/android/opengles/GLFrameSurface;)V

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->myListener:Landroid/hardware/SensorEventListener;

    .line 433
    new-instance v0, Lcom/android/opengles/GLFrameSurface$2;

    invoke-direct {v0, p0}, Lcom/android/opengles/GLFrameSurface$2;-><init>(Lcom/android/opengles/GLFrameSurface;)V

    iput-object v0, p0, Lcom/android/opengles/GLFrameSurface;->mySensorListener:Landroid/hardware/SensorEventListener;

    .line 127
    return-void
.end method

.method static synthetic access$0(Lcom/android/opengles/GLFrameSurface;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/opengles/GLFrameSurface;->calculateOrientation()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/opengles/GLFrameSurface;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/opengles/GLFrameSurface;->lastRot:I

    return v0
.end method

.method static synthetic access$2(Lcom/android/opengles/GLFrameSurface;F)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/android/opengles/GLFrameSurface;->timestamp:F

    return-void
.end method

.method static synthetic access$3(Lcom/android/opengles/GLFrameSurface;)[F
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/opengles/GLFrameSurface;->angle:[F

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/opengles/GLFrameSurface;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/android/opengles/GLFrameSurface;->lastRot:I

    return-void
.end method

.method static synthetic access$5(Lcom/android/opengles/GLFrameSurface;F)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/android/opengles/GLFrameSurface;->startVDegrees:F

    return-void
.end method

.method static synthetic access$6(Lcom/android/opengles/GLFrameSurface;F)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/android/opengles/GLFrameSurface;->startHDegrees:F

    return-void
.end method

.method static synthetic access$7(Lcom/android/opengles/GLFrameSurface;)F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/opengles/GLFrameSurface;->timestamp:F

    return v0
.end method

.method static synthetic access$8(Lcom/android/opengles/GLFrameSurface;)F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/opengles/GLFrameSurface;->startVDegrees:F

    return v0
.end method

.method static synthetic access$9(Lcom/android/opengles/GLFrameSurface;)F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/opengles/GLFrameSurface;->startHDegrees:F

    return v0
.end method

.method private calculateOrientation()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 337
    new-array v5, v14, [F

    .line 338
    .local v5, "values":[F
    const/16 v7, 0x9

    new-array v0, v7, [F

    .line 339
    .local v0, "R":[F
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface;->accelerometerValues:[F

    iget-object v9, p0, Lcom/android/opengles/GLFrameSurface;->magneticFieldValues:[F

    invoke-static {v0, v7, v8, v9}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 340
    invoke-static {v0, v5}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 344
    aget v7, v5, v12

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v7, v8

    aput v7, v5, v12

    .line 346
    aget v7, v5, v11

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v7, v8

    aput v7, v5, v11

    .line 347
    aget v7, v5, v10

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v7, v8

    aput v7, v5, v10

    .line 350
    invoke-virtual {p0}, Lcom/android/opengles/GLFrameSurface;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 351
    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 350
    check-cast v6, Landroid/view/WindowManager;

    .line 352
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 355
    .local v4, "uiRot":I
    const/4 v1, 0x0

    .local v1, "anglex":F
    const/4 v2, 0x0

    .local v2, "angley":F
    const/4 v3, 0x0

    .line 356
    .local v3, "anglez":F
    iget v7, p0, Lcom/android/opengles/GLFrameSurface;->startVDegrees:F

    cmpl-float v7, v13, v7

    if-nez v7, :cond_0

    .line 358
    if-nez v4, :cond_4

    .line 359
    aget v7, v5, v11

    iput v7, p0, Lcom/android/opengles/GLFrameSurface;->startVDegrees:F

    .line 367
    :cond_0
    :goto_0
    iget v7, p0, Lcom/android/opengles/GLFrameSurface;->startHDegrees:F

    cmpl-float v7, v13, v7

    if-nez v7, :cond_1

    .line 369
    if-nez v4, :cond_7

    .line 370
    aget v7, v5, v10

    neg-float v7, v7

    iput v7, p0, Lcom/android/opengles/GLFrameSurface;->startHDegrees:F

    .line 405
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/opengles/GLFrameSurface;->myGyroscope:Landroid/hardware/Sensor;

    if-nez v7, :cond_3

    .line 407
    if-nez v4, :cond_a

    .line 409
    aget v7, v5, v11

    neg-float v1, v7

    .line 410
    aget v2, v5, v10

    .line 427
    :cond_2
    :goto_2
    iget-wide v8, p0, Lcom/android/opengles/GLFrameSurface;->flushCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/opengles/GLFrameSurface;->flushCount:J

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 428
    invoke-virtual {p0, v13, v13, v1, v2}, Lcom/android/opengles/GLFrameSurface;->update(FFFF)V

    .line 431
    :cond_3
    return-void

    .line 360
    :cond_4
    if-ne v11, v4, :cond_5

    .line 361
    aget v7, v5, v10

    iput v7, p0, Lcom/android/opengles/GLFrameSurface;->startVDegrees:F

    goto :goto_0

    .line 362
    :cond_5
    if-ne v10, v4, :cond_6

    .line 363
    aget v7, v5, v11

    neg-float v7, v7

    iput v7, p0, Lcom/android/opengles/GLFrameSurface;->startVDegrees:F

    goto :goto_0

    .line 364
    :cond_6
    if-ne v14, v4, :cond_0

    .line 365
    aget v7, v5, v10

    neg-float v7, v7

    iput v7, p0, Lcom/android/opengles/GLFrameSurface;->startVDegrees:F

    goto :goto_0

    .line 371
    :cond_7
    if-ne v11, v4, :cond_8

    .line 372
    aget v7, v5, v12

    iput v7, p0, Lcom/android/opengles/GLFrameSurface;->startHDegrees:F

    goto :goto_1

    .line 373
    :cond_8
    if-ne v10, v4, :cond_9

    .line 374
    aget v7, v5, v10

    iput v7, p0, Lcom/android/opengles/GLFrameSurface;->startHDegrees:F

    goto :goto_1

    .line 375
    :cond_9
    if-ne v14, v4, :cond_1

    .line 376
    aget v7, v5, v12

    const/high16 v8, 0x43340000    # 180.0f

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/android/opengles/GLFrameSurface;->startHDegrees:F

    goto :goto_1

    .line 412
    :cond_a
    if-ne v11, v4, :cond_b

    .line 414
    aget v7, v5, v10

    neg-float v1, v7

    .line 415
    aget v7, v5, v12

    neg-float v2, v7

    .line 416
    goto :goto_2

    .line 417
    :cond_b
    if-eq v10, v4, :cond_2

    .line 421
    if-ne v14, v4, :cond_2

    .line 423
    aget v1, v5, v10

    .line 424
    aget v7, v5, v12

    neg-float v2, v7

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    .line 140
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 317
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/opengles/GLFrameRenderer;->isDoubleClick:Z

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 202
    sget v3, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-ne v5, v3, :cond_0

    .line 231
    :goto_0
    return v1

    .line 207
    :cond_0
    sget v3, Lcom/android/opengles/GLFrameRenderer;->hOffset:F

    iput v3, p0, Lcom/android/opengles/GLFrameSurface;->hOffset:F

    .line 208
    sget v3, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    iput v3, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    .line 209
    sget v3, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    iput v3, p0, Lcom/android/opengles/GLFrameSurface;->hDegrees:F

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x4

    if-lt v0, v3, :cond_2

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sget v4, Lcom/android/opengles/GLFrameRenderer;->mScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sget v4, Lcom/android/opengles/GLFrameRenderer;->mScreenHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    .line 215
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/opengles/GLFrameSurface;->curIndex:I

    .line 230
    :cond_1
    :goto_2
    iget v1, p0, Lcom/android/opengles/GLFrameSurface;->curIndex:I

    sput v1, Lcom/android/opengles/GLFrameRenderer;->curIndex:I

    move v1, v2

    .line 231
    goto :goto_0

    .line 212
    :cond_2
    iget-object v3, p0, Lcom/android/opengles/GLFrameSurface;->hEyeDegrees:[F

    sget-object v4, Lcom/android/opengles/GLFrameRenderer;->hEyeDegrees:[F

    aget v4, v4, v0

    aput v4, v3, v0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sget v4, Lcom/android/opengles/GLFrameRenderer;->mScreenWidth:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_4

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sget v4, Lcom/android/opengles/GLFrameRenderer;->mScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sget v4, Lcom/android/opengles/GLFrameRenderer;->mScreenHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_4

    .line 219
    iput v5, p0, Lcom/android/opengles/GLFrameSurface;->curIndex:I

    goto :goto_2

    .line 220
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sget v4, Lcom/android/opengles/GLFrameRenderer;->mScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sget v4, Lcom/android/opengles/GLFrameRenderer;->mScreenHeight:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sget v4, Lcom/android/opengles/GLFrameRenderer;->mScreenHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 223
    iput v1, p0, Lcom/android/opengles/GLFrameSurface;->curIndex:I

    goto :goto_2

    .line 224
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget v3, Lcom/android/opengles/GLFrameRenderer;->mScreenWidth:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget v3, Lcom/android/opengles/GLFrameRenderer;->mScreenWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sget v3, Lcom/android/opengles/GLFrameRenderer;->mScreenHeight:I

    int-to-float v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sget v3, Lcom/android/opengles/GLFrameRenderer;->mScreenHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 228
    iput v2, p0, Lcom/android/opengles/GLFrameSurface;->curIndex:I

    goto/16 :goto_2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v1, 0x44fa0000    # 2000.0f

    .line 239
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/opengles/GLFrameSurface;->mFrameRender:Lcom/android/opengles/GLFrameRenderer;

    invoke-virtual {v0, p3}, Lcom/android/opengles/GLFrameRenderer;->setvelocityX(F)V

    .line 241
    :cond_0
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/opengles/GLFrameSurface;->mFrameRender:Lcom/android/opengles/GLFrameRenderer;

    invoke-virtual {v0, p4}, Lcom/android/opengles/GLFrameRenderer;->setvelocityY(F)V

    .line 243
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 250
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v7, 0x6

    const/4 v9, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v8, 0x41200000    # 10.0f

    .line 256
    sget v4, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-eqz v4, :cond_0

    sget v4, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-ne v7, v4, :cond_8

    .line 258
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float v2, v4, v5

    .line 259
    .local v2, "offsetX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v3, v4, v5

    .line 260
    .local v3, "offsetY":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 291
    .end local v2    # "offsetX":F
    .end local v3    # "offsetY":F
    :cond_1
    :goto_0
    return v9

    .line 263
    .restart local v2    # "offsetX":F
    .restart local v3    # "offsetY":F
    :cond_2
    sget v4, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    sget v5, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-ne v4, v5, :cond_7

    .line 265
    :cond_3
    iget v4, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    div-float v5, v3, v8

    sub-float/2addr v4, v5

    sput v4, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    .line 266
    iget v4, p0, Lcom/android/opengles/GLFrameSurface;->hDegrees:F

    div-float v5, v2, v8

    sub-float/2addr v4, v5

    sput v4, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    .line 268
    sget v4, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-ne v7, v4, :cond_5

    .line 270
    sget v4, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    sget v5, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v5}, Lcom/fh/lib/FHSDK;->getMaxHDegress(I)F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_4

    .line 271
    sget v4, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v4}, Lcom/fh/lib/FHSDK;->getMaxHDegress(I)F

    move-result v4

    sput v4, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    .line 272
    :cond_4
    sget v4, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    sget v5, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v5}, Lcom/fh/lib/FHSDK;->getMinHDegress(I)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    .line 273
    sget v4, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v4}, Lcom/fh/lib/FHSDK;->getMinHDegress(I)F

    move-result v4

    sput v4, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    .line 275
    :cond_5
    sget v4, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    sget v5, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v5}, Lcom/fh/lib/FHSDK;->getMaxVDegress(I)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    .line 276
    sget v4, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v4}, Lcom/fh/lib/FHSDK;->getMaxVDegress(I)F

    move-result v4

    sput v4, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    goto :goto_0

    .line 277
    :cond_6
    sget v4, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    sget v5, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v5}, Lcom/fh/lib/FHSDK;->getMinVDegress(I)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 278
    sget v4, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v4}, Lcom/fh/lib/FHSDK;->getMinVDegress(I)F

    move-result v4

    sput v4, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    goto :goto_0

    .line 280
    :cond_7
    const/4 v4, 0x2

    sget v5, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-ne v4, v5, :cond_1

    .line 282
    sget-object v4, Lcom/android/opengles/GLFrameRenderer;->hEyeDegrees:[F

    iget v5, p0, Lcom/android/opengles/GLFrameSurface;->curIndex:I

    iget-object v6, p0, Lcom/android/opengles/GLFrameSurface;->hEyeDegrees:[F

    iget v7, p0, Lcom/android/opengles/GLFrameSurface;->curIndex:I

    aget v6, v6, v7

    div-float v7, v2, v8

    sub-float/2addr v6, v7

    aput v6, v4, v5

    goto/16 :goto_0

    .line 287
    .end local v2    # "offsetX":F
    .end local v3    # "offsetY":F
    :cond_8
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 288
    .local v0, "base":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x43fa0000    # 500.0f

    div-float v1, v4, v5

    .line 289
    .local v1, "offset":F
    iget v4, p0, Lcom/android/opengles/GLFrameSurface;->hOffset:F

    sub-float/2addr v4, v1

    sput v4, Lcom/android/opengles/GLFrameRenderer;->hOffset:F

    goto/16 :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 299
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 146
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    .line 147
    iget-object v6, p0, Lcom/android/opengles/GLFrameSurface;->mFrameRender:Lcom/android/opengles/GLFrameRenderer;

    invoke-virtual {v6, v8}, Lcom/android/opengles/GLFrameRenderer;->setvelocityX(F)V

    .line 148
    iget-object v6, p0, Lcom/android/opengles/GLFrameSurface;->mFrameRender:Lcom/android/opengles/GLFrameRenderer;

    invoke-virtual {v6, v8}, Lcom/android/opengles/GLFrameRenderer;->setvelocityY(F)V

    .line 149
    iput v8, p0, Lcom/android/opengles/GLFrameSurface;->baseValue:F

    .line 151
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 152
    iget-boolean v6, p0, Lcom/android/opengles/GLFrameSurface;->isScaleMode:Z

    if-eqz v6, :cond_2

    .line 154
    iput-boolean v5, p0, Lcom/android/opengles/GLFrameSurface;->isScaleMode:Z

    .line 193
    :cond_1
    :goto_0
    return v5

    .line 158
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v7, :cond_8

    .line 159
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 160
    iget-boolean v6, p0, Lcom/android/opengles/GLFrameSurface;->isScaleMode:Z

    if-nez v6, :cond_1

    .line 163
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ne v6, v7, :cond_8

    .line 164
    iput-boolean v9, p0, Lcom/android/opengles/GLFrameSurface;->isScaleMode:Z

    .line 166
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float v3, v6, v7

    .line 167
    .local v3, "x":F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float v4, v6, v7

    .line 168
    .local v4, "y":F
    mul-float v6, v3, v3

    mul-float v7, v4, v4

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v2, v6

    .line 169
    .local v2, "value":F
    iget v6, p0, Lcom/android/opengles/GLFrameSurface;->baseValue:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_4

    .line 170
    iput v2, p0, Lcom/android/opengles/GLFrameSurface;->baseValue:F

    goto :goto_0

    .line 172
    :cond_4
    const/4 v1, 0x0

    .line 173
    .local v1, "step":F
    iget v6, p0, Lcom/android/opengles/GLFrameSurface;->baseValue:F

    div-float v0, v2, v6

    .line 174
    .local v0, "scale":F
    cmpl-float v6, v0, v10

    if-lez v6, :cond_6

    .line 176
    const v1, 0x3dcccccd    # 0.1f

    .line 182
    :cond_5
    :goto_1
    sget v6, Lcom/android/opengles/GLFrameRenderer;->depth:F

    add-float/2addr v6, v1

    sput v6, Lcom/android/opengles/GLFrameRenderer;->depth:F

    .line 183
    sget v6, Lcom/android/opengles/GLFrameRenderer;->depth:F

    sget v7, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v7}, Lcom/fh/lib/FHSDK;->getMaxZDepth(I)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    .line 184
    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->getMaxZDepth(I)F

    move-result v6

    sput v6, Lcom/android/opengles/GLFrameRenderer;->depth:F

    goto :goto_0

    .line 178
    :cond_6
    cmpg-float v6, v0, v10

    if-gez v6, :cond_5

    .line 180
    const v1, -0x42333333    # -0.1f

    goto :goto_1

    .line 185
    :cond_7
    sget v6, Lcom/android/opengles/GLFrameRenderer;->depth:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1

    .line 186
    sput v8, Lcom/android/opengles/GLFrameRenderer;->depth:F

    goto :goto_0

    .line 193
    .end local v0    # "scale":F
    .end local v1    # "step":F
    .end local v2    # "value":F
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_8
    iget-object v5, p0, Lcom/android/opengles/GLFrameSurface;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method public rigisterListener()V
    .locals 4

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/opengles/GLFrameSurface;->mySensorManager:Landroid/hardware/SensorManager;

    .line 95
    iget-object v1, p0, Lcom/android/opengles/GLFrameSurface;->mySensorListener:Landroid/hardware/SensorEventListener;

    .line 96
    iget-object v2, p0, Lcom/android/opengles/GLFrameSurface;->myGyroscope:Landroid/hardware/Sensor;

    .line 97
    const/4 v3, 0x1

    .line 94
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 100
    iget-object v0, p0, Lcom/android/opengles/GLFrameSurface;->mySensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/opengles/GLFrameSurface;->myListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/opengles/GLFrameSurface;->aSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 101
    iget-object v0, p0, Lcom/android/opengles/GLFrameSurface;->mySensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/opengles/GLFrameSurface;->myListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/opengles/GLFrameSurface;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unRigisterListener()V
    .locals 4

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/android/opengles/GLFrameSurface;->mySensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/opengles/GLFrameSurface;->mySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/opengles/GLFrameSurface;->myGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 116
    iget-object v1, p0, Lcom/android/opengles/GLFrameSurface;->mySensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/opengles/GLFrameSurface;->myListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/opengles/GLFrameSurface;->aSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 117
    iget-object v1, p0, Lcom/android/opengles/GLFrameSurface;->mySensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/opengles/GLFrameSurface;->myListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/opengles/GLFrameSurface;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public update(FFFF)V
    .locals 5
    .param p1, "startVDegrees"    # F
    .param p2, "startHDegrees"    # F
    .param p3, "anglex"    # F
    .param p4, "angley"    # F

    .prologue
    const/4 v4, 0x0

    .line 502
    move v0, p3

    .line 503
    .local v0, "offsetX":F
    move v1, p4

    .line 508
    .local v1, "offsetY":F
    const/4 v2, 0x3

    sget v3, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-ne v2, v3, :cond_1

    .line 510
    sget v2, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-nez v2, :cond_3

    .line 512
    sub-float v2, p1, v0

    iput v2, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    .line 513
    sub-float v2, p2, v1

    iput v2, p0, Lcom/android/opengles/GLFrameSurface;->hDegrees:F

    .line 515
    iget v2, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    sget v3, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v3}, Lcom/fh/lib/FHSDK;->getMaxVDegress(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 516
    sget v2, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v2}, Lcom/fh/lib/FHSDK;->getMaxVDegress(I)F

    move-result v2

    iput v2, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    .line 520
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    sput v2, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    .line 521
    iget v2, p0, Lcom/android/opengles/GLFrameSurface;->hDegrees:F

    sput v2, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    .line 542
    :cond_1
    :goto_1
    return-void

    .line 517
    :cond_2
    iget v2, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 518
    iput v4, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    goto :goto_0

    .line 526
    :cond_3
    const/4 v2, 0x6

    sget v3, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-ne v2, v3, :cond_1

    .line 528
    sub-float v2, p1, v0

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    .line 529
    sub-float v2, p2, v1

    iput v2, p0, Lcom/android/opengles/GLFrameSurface;->hDegrees:F

    .line 531
    iget v2, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    sget v3, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v3}, Lcom/fh/lib/FHSDK;->getMaxVDegress(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 532
    sget v2, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v2}, Lcom/fh/lib/FHSDK;->getMaxVDegress(I)F

    move-result v2

    iput v2, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    .line 536
    :cond_4
    :goto_2
    iget v2, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    sput v2, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    .line 537
    iget v2, p0, Lcom/android/opengles/GLFrameSurface;->hDegrees:F

    sput v2, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    goto :goto_1

    .line 533
    :cond_5
    iget v2, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    sget v3, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v3}, Lcom/fh/lib/FHSDK;->getMinVDegress(I)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 534
    sget v2, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v2}, Lcom/fh/lib/FHSDK;->getMinVDegress(I)F

    move-result v2

    iput v2, p0, Lcom/android/opengles/GLFrameSurface;->vDegrees:F

    goto :goto_2
.end method
