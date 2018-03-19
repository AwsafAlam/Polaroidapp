.class public Lcom/example/photo/PhotosImageView;
.super Landroid/widget/ImageView;
.source "PhotosImageView.java"


# static fields
.field private static final MAX_ZOOM:F = 2.0f

.field private static final MIN_ZOOM:F = 0.8f


# instance fields
.field private SCREEN_HEIGHT:I

.field private SCREEN_WIDTH:I

.field private imageHeight:I

.field private imageWidth:I

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field private final mHandler:Landroid/os/Handler;

.field private final mMatrixValues:[F

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private tag:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mMatrixValues:[F

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 17
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mHandler:Landroid/os/Handler;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/photo/PhotosImageView;->tag:F

    .line 27
    invoke-direct {p0}, Lcom/example/photo/PhotosImageView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mMatrixValues:[F

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 17
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mHandler:Landroid/os/Handler;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/photo/PhotosImageView;->tag:F

    .line 32
    invoke-direct {p0}, Lcom/example/photo/PhotosImageView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mMatrixValues:[F

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 17
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mHandler:Landroid/os/Handler;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/photo/PhotosImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/photo/PhotosImageView;->tag:F

    .line 37
    invoke-direct {p0}, Lcom/example/photo/PhotosImageView;->init()V

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/example/photo/PhotosImageView;)F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/example/photo/PhotosImageView;->tag:F

    return v0
.end method

.method static synthetic access$1(Lcom/example/photo/PhotosImageView;F)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/example/photo/PhotosImageView;->tag:F

    return-void
.end method

.method static synthetic access$2(Lcom/example/photo/PhotosImageView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/example/photo/PhotosImageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private center()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    .line 150
    iget-object v7, p0, Lcom/example/photo/PhotosImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_0

    .line 180
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v3, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/example/photo/PhotosImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/example/photo/PhotosImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v3, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 156
    .local v3, "rect":Landroid/graphics/RectF;
    invoke-direct {p0}, Lcom/example/photo/PhotosImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 158
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 159
    .local v1, "deltaY":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    .local v2, "height":F
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 160
    .local v6, "width":F
    invoke-virtual {p0}, Lcom/example/photo/PhotosImageView;->getWidth()I

    move-result v5

    .local v5, "viewWidth":I
    invoke-virtual {p0}, Lcom/example/photo/PhotosImageView;->getHeight()I

    move-result v4

    .line 162
    .local v4, "viewHeight":I
    int-to-float v7, v4

    cmpg-float v7, v2, v7

    if-gez v7, :cond_3

    .line 163
    int-to-float v7, v4

    sub-float/2addr v7, v2

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->top:F

    sub-float v1, v7, v8

    .line 170
    :cond_1
    :goto_1
    int-to-float v7, v5

    cmpg-float v7, v6, v7

    if-gez v7, :cond_5

    .line 171
    int-to-float v7, v5

    sub-float/2addr v7, v6

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->left:F

    sub-float v0, v7, v8

    .line 178
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/example/photo/PhotosImageView;->postTranslate(FF)V

    .line 179
    invoke-direct {p0}, Lcom/example/photo/PhotosImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/example/photo/PhotosImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 164
    :cond_3
    iget v7, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    .line 165
    iget v7, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v7

    .line 166
    goto :goto_1

    :cond_4
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/example/photo/PhotosImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v7, v8

    goto :goto_1

    .line 172
    :cond_5
    iget v7, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_6

    .line 173
    iget v7, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v7

    .line 174
    goto :goto_2

    :cond_6
    iget v7, v3, Landroid/graphics/RectF;->right:F

    int-to-float v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 175
    int-to-float v7, v5

    iget v8, v3, Landroid/graphics/RectF;->right:F

    sub-float v0, v7, v8

    goto :goto_2
.end method

.method private getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/example/photo/PhotosImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/example/photo/PhotosImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 184
    iget-object v0, p0, Lcom/example/photo/PhotosImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/example/photo/PhotosImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 185
    iget-object v0, p0, Lcom/example/photo/PhotosImageView;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private getValue(Landroid/graphics/Matrix;)F
    .locals 2
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/example/photo/PhotosImageView;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 109
    iget-object v0, p0, Lcom/example/photo/PhotosImageView;->mMatrixValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/example/photo/PhotosImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 42
    sget v0, Lcom/example/photo/PlayPhotoActivity;->SCREEN_WIDTH:I

    iput v0, p0, Lcom/example/photo/PhotosImageView;->SCREEN_WIDTH:I

    .line 43
    sget v0, Lcom/example/photo/PlayPhotoActivity;->SCREEN_HEIGHT:I

    iput v0, p0, Lcom/example/photo/PhotosImageView;->SCREEN_HEIGHT:I

    .line 44
    return-void
.end method

.method private layoutToCenter()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 70
    iget v4, p0, Lcom/example/photo/PhotosImageView;->SCREEN_WIDTH:I

    iget v5, p0, Lcom/example/photo/PhotosImageView;->imageWidth:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 71
    .local v1, "fill_width":F
    iget v4, p0, Lcom/example/photo/PhotosImageView;->SCREEN_HEIGHT:I

    iget v5, p0, Lcom/example/photo/PhotosImageView;->imageHeight:I

    sub-int/2addr v4, v5

    int-to-float v0, v4

    .line 73
    .local v0, "fill_height":F
    const/4 v3, 0x0

    .line 74
    .local v3, "tran_width":F
    const/4 v2, 0x0

    .line 76
    .local v2, "tran_height":F
    cmpl-float v4, v1, v6

    if-lez v4, :cond_0

    .line 77
    div-float v3, v1, v7

    .line 78
    :cond_0
    cmpl-float v4, v0, v6

    if-lez v4, :cond_1

    .line 79
    div-float v2, v0, v7

    .line 81
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/example/photo/PhotosImageView;->postTranslate(FF)V

    .line 82
    invoke-direct {p0}, Lcom/example/photo/PhotosImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/example/photo/PhotosImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getImageHeight()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/example/photo/PhotosImageView;->imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/example/photo/PhotosImageView;->imageWidth:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/example/photo/PhotosImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/example/photo/PhotosImageView;->getValue(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 87
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 96
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/example/photo/PhotosImageView;->getScale()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/example/photo/PhotosImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/example/photo/PhotosImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/example/photo/PhotosImageView;->zoomTo(FFF)V

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public postTranslate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 130
    iget-object v0, p0, Lcom/example/photo/PhotosImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 131
    invoke-direct {p0}, Lcom/example/photo/PhotosImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/example/photo/PhotosImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 132
    return-void
.end method

.method public postTranslateDur(FF)V
    .locals 7
    .param p1, "dy"    # F
    .param p2, "durationMs"    # F

    .prologue
    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/photo/PhotosImageView;->tag:F

    .line 114
    div-float v6, p1, p2

    .line 115
    .local v6, "incrementPerMs":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 116
    .local v4, "startTime":J
    iget-object v0, p0, Lcom/example/photo/PhotosImageView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/example/photo/PhotosImageView$1;

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/example/photo/PhotosImageView$1;-><init>(Lcom/example/photo/PhotosImageView;FJF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    iput-object p1, p0, Lcom/example/photo/PhotosImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 66
    invoke-direct {p0}, Lcom/example/photo/PhotosImageView;->layoutToCenter()V

    .line 67
    return-void
.end method

.method public setImageHeight(I)V
    .locals 0
    .param p1, "imageHeight"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/example/photo/PhotosImageView;->imageHeight:I

    .line 60
    return-void
.end method

.method public setImageWidth(I)V
    .locals 0
    .param p1, "imageWidth"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/example/photo/PhotosImageView;->imageWidth:I

    .line 52
    return-void
.end method

.method public zoomTo(FFF)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .prologue
    .line 135
    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 136
    const/high16 p1, 0x40000000    # 2.0f

    .line 141
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/example/photo/PhotosImageView;->getScale()F

    move-result v1

    .line 142
    .local v1, "oldScale":F
    div-float v0, p1, v1

    .line 144
    .local v0, "deltaScale":F
    iget-object v2, p0, Lcom/example/photo/PhotosImageView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 145
    invoke-direct {p0}, Lcom/example/photo/PhotosImageView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/example/photo/PhotosImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 146
    invoke-direct {p0}, Lcom/example/photo/PhotosImageView;->center()V

    .line 147
    return-void

    .line 137
    .end local v0    # "deltaScale":F
    .end local v1    # "oldScale":F
    :cond_1
    const v2, 0x3f4ccccd    # 0.8f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 138
    const p1, 0x3f4ccccd    # 0.8f

    goto :goto_0
.end method
