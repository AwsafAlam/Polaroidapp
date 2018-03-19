.class public Lcom/example/photo/PhotosGallery;
.super Landroid/widget/Gallery;
.source "PhotosGallery.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private SCREEN_HEIGHT:I

.field private SCREEN_WIDTH:I

.field private baseValue:F

.field private imageView:Lcom/example/photo/PhotosImageView;

.field private originalScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/example/photo/PhotosGallery;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/example/photo/PhotosGallery;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/example/photo/PhotosGallery;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p0}, Lcom/example/photo/PhotosGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 35
    sget v0, Lcom/example/photo/PlayPhotoActivity;->SCREEN_WIDTH:I

    iput v0, p0, Lcom/example/photo/PhotosGallery;->SCREEN_WIDTH:I

    .line 36
    sget v0, Lcom/example/photo/PlayPhotoActivity;->SCREEN_HEIGHT:I

    iput v0, p0, Lcom/example/photo/PhotosGallery;->SCREEN_HEIGHT:I

    .line 37
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/example/photo/PhotosGallery;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 41
    .local v5, "view":Landroid/view/View;
    instance-of v8, v5, Lcom/example/photo/PhotosImageView;

    if-eqz v8, :cond_2

    .line 42
    check-cast v5, Lcom/example/photo/PhotosImageView;

    .end local v5    # "view":Landroid/view/View;
    iput-object v5, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    .line 43
    const/16 v8, 0x9

    new-array v4, v8, [F

    .line 44
    .local v4, "v":[F
    iget-object v8, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    invoke-virtual {v8}, Lcom/example/photo/PhotosImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 45
    iget-object v8, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    invoke-virtual {v8}, Lcom/example/photo/PhotosImageView;->getScale()F

    move-result v8

    iget-object v9, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    invoke-virtual {v9}, Lcom/example/photo/PhotosImageView;->getImageWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v6, v8

    .line 46
    .local v6, "width":I
    iget-object v8, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    invoke-virtual {v8}, Lcom/example/photo/PhotosImageView;->getScale()F

    move-result v8

    iget-object v9, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    invoke-virtual {v9}, Lcom/example/photo/PhotosImageView;->getImageHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 47
    .local v0, "height":I
    iget v8, p0, Lcom/example/photo/PhotosGallery;->SCREEN_WIDTH:I

    if-gt v6, v8, :cond_0

    iget v8, p0, Lcom/example/photo/PhotosGallery;->SCREEN_HEIGHT:I

    if-le v0, v8, :cond_2

    .line 48
    :cond_0
    const/4 v8, 0x2

    aget v1, v4, v8

    .line 49
    .local v1, "left":F
    int-to-float v8, v6

    add-float v3, v1, v8

    .line 50
    .local v3, "right":F
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 51
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    invoke-virtual {v8, v2}, Lcom/example/photo/PhotosImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 52
    cmpl-float v8, p3, v10

    if-lez v8, :cond_1

    iget v8, v2, Landroid/graphics/Rect;->left:I

    if-gtz v8, :cond_1

    iget v8, p0, Lcom/example/photo/PhotosGallery;->SCREEN_WIDTH:I

    int-to-float v8, v8

    cmpl-float v8, v3, v8

    if-ltz v8, :cond_1

    .line 53
    iget-object v8, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    neg-float v9, p3

    neg-float v10, p4

    invoke-virtual {v8, v9, v10}, Lcom/example/photo/PhotosImageView;->postTranslate(FF)V

    .line 61
    .end local v0    # "height":I
    .end local v1    # "left":F
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "right":F
    .end local v4    # "v":[F
    .end local v6    # "width":I
    :goto_0
    return v7

    .line 55
    .restart local v0    # "height":I
    .restart local v1    # "left":F
    .restart local v2    # "rect":Landroid/graphics/Rect;
    .restart local v3    # "right":F
    .restart local v4    # "v":[F
    .restart local v6    # "width":I
    :cond_1
    cmpg-float v8, p3, v10

    if-gez v8, :cond_2

    iget v8, v2, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/example/photo/PhotosGallery;->SCREEN_WIDTH:I

    if-lt v8, v9, :cond_2

    cmpg-float v8, v1, v10

    if-gtz v8, :cond_2

    .line 56
    iget-object v8, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    neg-float v9, p3

    neg-float v10, p4

    invoke-virtual {v8, v9, v10}, Lcom/example/photo/PhotosImageView;->postTranslate(FF)V

    goto :goto_0

    .line 61
    .end local v0    # "height":I
    .end local v1    # "left":F
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "right":F
    .end local v4    # "v":[F
    .end local v6    # "width":I
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v7

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/example/photo/PhotosGallery;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "view":Landroid/view/View;
    instance-of v6, v1, Lcom/example/photo/PhotosImageView;

    if-eqz v6, :cond_0

    .line 99
    check-cast v1, Lcom/example/photo/PhotosImageView;

    .end local v1    # "view":Landroid/view/View;
    iput-object v1, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    .line 100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    :pswitch_0
    return v10

    .line 102
    :pswitch_1
    iget-object v6, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    invoke-virtual {v6}, Lcom/example/photo/PhotosImageView;->getScale()F

    move-result v6

    iput v6, p0, Lcom/example/photo/PhotosGallery;->originalScale:F

    .line 103
    iput v8, p0, Lcom/example/photo/PhotosGallery;->baseValue:F

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 107
    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 108
    .local v3, "x2":F
    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 109
    .local v5, "y2":F
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float v2, v6, v3

    .line 110
    .local v2, "x":F
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float v4, v6, v5

    .line 111
    .local v4, "y":F
    mul-float v6, v2, v2

    mul-float v7, v4, v4

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 112
    .local v0, "value":F
    iget v6, p0, Lcom/example/photo/PhotosGallery;->baseValue:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_1

    .line 113
    iput v0, p0, Lcom/example/photo/PhotosGallery;->baseValue:F

    goto :goto_0

    .line 115
    :cond_1
    iget-object v6, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    iget v7, p0, Lcom/example/photo/PhotosGallery;->originalScale:F

    iget v8, p0, Lcom/example/photo/PhotosGallery;->baseValue:F

    div-float v8, v0, v8

    mul-float/2addr v7, v8

    add-float v8, v2, v3

    add-float v9, v4, v5

    invoke-virtual {v6, v7, v8, v9}, Lcom/example/photo/PhotosImageView;->zoomTo(FFF)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v10, 0x43480000    # 200.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/example/photo/PhotosGallery;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 70
    .local v4, "view":Landroid/view/View;
    instance-of v6, v4, Lcom/example/photo/PhotosImageView;

    if-eqz v6, :cond_0

    .line 71
    check-cast v4, Lcom/example/photo/PhotosImageView;

    .end local v4    # "view":Landroid/view/View;
    iput-object v4, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 74
    :pswitch_0
    iget-object v6, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    invoke-virtual {v6}, Lcom/example/photo/PhotosImageView;->getScale()F

    move-result v6

    iget-object v7, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    invoke-virtual {v7}, Lcom/example/photo/PhotosImageView;->getImageWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 75
    .local v5, "width":I
    iget-object v6, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    invoke-virtual {v6}, Lcom/example/photo/PhotosImageView;->getScale()F

    move-result v6

    iget-object v7, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    invoke-virtual {v7}, Lcom/example/photo/PhotosImageView;->getImageHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 76
    .local v1, "height":I
    iget v6, p0, Lcom/example/photo/PhotosGallery;->SCREEN_WIDTH:I

    if-gt v5, v6, :cond_1

    iget v6, p0, Lcom/example/photo/PhotosGallery;->SCREEN_HEIGHT:I

    if-le v1, v6, :cond_3

    .line 77
    :cond_1
    const/16 v6, 0x9

    new-array v3, v6, [F

    .line 78
    .local v3, "v":[F
    iget-object v6, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    invoke-virtual {v6}, Lcom/example/photo/PhotosImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 79
    const/4 v6, 0x5

    aget v2, v3, v6

    .line 80
    .local v2, "top":F
    int-to-float v6, v1

    add-float v0, v2, v6

    .line 81
    .local v0, "bottom":F
    cmpl-float v6, v2, v8

    if-lez v6, :cond_2

    .line 82
    iget-object v6, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    neg-float v7, v2

    invoke-virtual {v6, v7, v10}, Lcom/example/photo/PhotosImageView;->postTranslateDur(FF)V

    .line 84
    :cond_2
    iget v6, p0, Lcom/example/photo/PhotosGallery;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_0

    .line 85
    iget-object v6, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    iget v7, p0, Lcom/example/photo/PhotosGallery;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    sub-float/2addr v7, v0

    invoke-virtual {v6, v7, v10}, Lcom/example/photo/PhotosImageView;->postTranslateDur(FF)V

    goto :goto_0

    .line 87
    .end local v0    # "bottom":F
    .end local v2    # "top":F
    .end local v3    # "v":[F
    :cond_3
    iget-object v6, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    invoke-virtual {v6}, Lcom/example/photo/PhotosImageView;->getScale()F

    move-result v6

    cmpg-float v6, v6, v9

    if-gez v6, :cond_0

    .line 88
    iget-object v6, p0, Lcom/example/photo/PhotosGallery;->imageView:Lcom/example/photo/PhotosImageView;

    invoke-virtual {v6, v9, v8, v8}, Lcom/example/photo/PhotosImageView;->zoomTo(FFF)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
