.class public Let/song/ui/widgets/ETRightRocker;
.super Landroid/view/View;
.source "ETRightRocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Let/song/ui/widgets/ETRightRocker$trackPoint;
    }
.end annotation


# static fields
.field private static final BALL_DEFAULT_COLOR:I = -0x70cc9901

.field private static final BG_DEFAULT_COLOR:I = -0x70131314

.field private static final TAG:Ljava/lang/String;

.field private static mBitmapBall:Landroid/graphics/Bitmap;

.field private static mBitmapBg:Landroid/graphics/Bitmap;

.field private static mBitmapPlane:Landroid/graphics/Bitmap;


# instance fields
.field final GUIJI_STATUS_DRAW_LINE:I

.field final GUIJI_STATUS_DRAW_OVER:I

.field final GUIJI_STATUS_DRAW_PLANE:I

.field private PointNoFive:Let/song/ui/widgets/ETRightRocker$trackPoint;

.field private PointNoOne:Let/song/ui/widgets/ETRightRocker$trackPoint;

.field private ballCoord:[I

.field private canvasHeight:I

.field private canvasWidth:I

.field private centerCoord:[I

.field private dm:Landroid/util/DisplayMetrics;

.field private isPress:Z

.field private ismLock:Z

.field private ismManual:Z

.field private mActiveSize:I

.field private mBallSize:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLineBitmap:Landroid/graphics/Bitmap;

.field private mMarginSize:I

.field private mMaxX:I

.field private mMaxY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPlaneBitmapCanvas:Landroid/graphics/Canvas;

.field private mPlanePaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private mode:I

.field private planeCoord:[I

.field private planeStatus:I

.field private pointIdx:I

.field private pointLength:I

.field final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Let/song/ui/widgets/ETRightRocker$trackPoint;",
            ">;"
        }
    .end annotation
.end field

.field private startX:F

.field private startY:F

.field updatePlanePos:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Let/song/ui/widgets/ETRightRocker;->TAG:Ljava/lang/String;

    .line 40
    sput-object v0, Let/song/ui/widgets/ETRightRocker;->mBitmapPlane:Landroid/graphics/Bitmap;

    .line 41
    sput-object v0, Let/song/ui/widgets/ETRightRocker;->mBitmapBg:Landroid/graphics/Bitmap;

    .line 42
    sput-object v0, Let/song/ui/widgets/ETRightRocker;->mBitmapBall:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    new-array v0, v3, [I

    iput-object v0, p0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    .line 48
    new-array v0, v3, [I

    iput-object v0, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    .line 49
    new-array v0, v3, [I

    iput-object v0, p0, Let/song/ui/widgets/ETRightRocker;->planeCoord:[I

    .line 50
    new-instance v0, Let/song/ui/widgets/ETRightRocker$trackPoint;

    invoke-direct {v0, p0, v2}, Let/song/ui/widgets/ETRightRocker$trackPoint;-><init>(Let/song/ui/widgets/ETRightRocker;Let/song/ui/widgets/ETRightRocker$trackPoint;)V

    iput-object v0, p0, Let/song/ui/widgets/ETRightRocker;->PointNoOne:Let/song/ui/widgets/ETRightRocker$trackPoint;

    .line 51
    new-instance v0, Let/song/ui/widgets/ETRightRocker$trackPoint;

    invoke-direct {v0, p0, v2}, Let/song/ui/widgets/ETRightRocker$trackPoint;-><init>(Let/song/ui/widgets/ETRightRocker;Let/song/ui/widgets/ETRightRocker$trackPoint;)V

    iput-object v0, p0, Let/song/ui/widgets/ETRightRocker;->PointNoFive:Let/song/ui/widgets/ETRightRocker$trackPoint;

    .line 56
    iput v5, p0, Let/song/ui/widgets/ETRightRocker;->mMaxX:I

    .line 57
    iput v5, p0, Let/song/ui/widgets/ETRightRocker;->mMaxY:I

    .line 59
    iput-boolean v4, p0, Let/song/ui/widgets/ETRightRocker;->ismLock:Z

    .line 60
    iput-boolean v4, p0, Let/song/ui/widgets/ETRightRocker;->ismManual:Z

    .line 61
    iput-boolean v1, p0, Let/song/ui/widgets/ETRightRocker;->isPress:Z

    .line 62
    iput v1, p0, Let/song/ui/widgets/ETRightRocker;->mode:I

    .line 63
    iput v1, p0, Let/song/ui/widgets/ETRightRocker;->pointIdx:I

    .line 64
    iput v1, p0, Let/song/ui/widgets/ETRightRocker;->pointLength:I

    .line 67
    iput v1, p0, Let/song/ui/widgets/ETRightRocker;->GUIJI_STATUS_DRAW_OVER:I

    .line 68
    iput v4, p0, Let/song/ui/widgets/ETRightRocker;->GUIJI_STATUS_DRAW_LINE:I

    .line 69
    iput v3, p0, Let/song/ui/widgets/ETRightRocker;->GUIJI_STATUS_DRAW_PLANE:I

    .line 70
    iput v1, p0, Let/song/ui/widgets/ETRightRocker;->planeStatus:I

    .line 217
    iput-object v2, p0, Let/song/ui/widgets/ETRightRocker;->mPlaneBitmapCanvas:Landroid/graphics/Canvas;

    .line 218
    iput-object v2, p0, Let/song/ui/widgets/ETRightRocker;->mLineBitmap:Landroid/graphics/Bitmap;

    .line 219
    iput-object v2, p0, Let/song/ui/widgets/ETRightRocker;->mPlanePaint:Landroid/graphics/Paint;

    .line 220
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Let/song/ui/widgets/ETRightRocker;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 226
    new-instance v0, Let/song/ui/widgets/ETRightRocker$1;

    invoke-direct {v0, p0}, Let/song/ui/widgets/ETRightRocker$1;-><init>(Let/song/ui/widgets/ETRightRocker;)V

    iput-object v0, p0, Let/song/ui/widgets/ETRightRocker;->mHandler:Landroid/os/Handler;

    .line 277
    new-instance v0, Let/song/ui/widgets/ETRightRocker$2;

    invoke-direct {v0, p0}, Let/song/ui/widgets/ETRightRocker$2;-><init>(Let/song/ui/widgets/ETRightRocker;)V

    iput-object v0, p0, Let/song/ui/widgets/ETRightRocker;->updatePlanePos:Ljava/lang/Runnable;

    .line 73
    iput-object p1, p0, Let/song/ui/widgets/ETRightRocker;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Let/song/ui/widgets/ETRightRocker;->initView()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v6, 0xff

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-array v1, v5, [I

    iput-object v1, p0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    .line 48
    new-array v1, v5, [I

    iput-object v1, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    .line 49
    new-array v1, v5, [I

    iput-object v1, p0, Let/song/ui/widgets/ETRightRocker;->planeCoord:[I

    .line 50
    new-instance v1, Let/song/ui/widgets/ETRightRocker$trackPoint;

    invoke-direct {v1, p0, v2}, Let/song/ui/widgets/ETRightRocker$trackPoint;-><init>(Let/song/ui/widgets/ETRightRocker;Let/song/ui/widgets/ETRightRocker$trackPoint;)V

    iput-object v1, p0, Let/song/ui/widgets/ETRightRocker;->PointNoOne:Let/song/ui/widgets/ETRightRocker$trackPoint;

    .line 51
    new-instance v1, Let/song/ui/widgets/ETRightRocker$trackPoint;

    invoke-direct {v1, p0, v2}, Let/song/ui/widgets/ETRightRocker$trackPoint;-><init>(Let/song/ui/widgets/ETRightRocker;Let/song/ui/widgets/ETRightRocker$trackPoint;)V

    iput-object v1, p0, Let/song/ui/widgets/ETRightRocker;->PointNoFive:Let/song/ui/widgets/ETRightRocker$trackPoint;

    .line 56
    iput v6, p0, Let/song/ui/widgets/ETRightRocker;->mMaxX:I

    .line 57
    iput v6, p0, Let/song/ui/widgets/ETRightRocker;->mMaxY:I

    .line 59
    iput-boolean v4, p0, Let/song/ui/widgets/ETRightRocker;->ismLock:Z

    .line 60
    iput-boolean v4, p0, Let/song/ui/widgets/ETRightRocker;->ismManual:Z

    .line 61
    iput-boolean v3, p0, Let/song/ui/widgets/ETRightRocker;->isPress:Z

    .line 62
    iput v3, p0, Let/song/ui/widgets/ETRightRocker;->mode:I

    .line 63
    iput v3, p0, Let/song/ui/widgets/ETRightRocker;->pointIdx:I

    .line 64
    iput v3, p0, Let/song/ui/widgets/ETRightRocker;->pointLength:I

    .line 67
    iput v3, p0, Let/song/ui/widgets/ETRightRocker;->GUIJI_STATUS_DRAW_OVER:I

    .line 68
    iput v4, p0, Let/song/ui/widgets/ETRightRocker;->GUIJI_STATUS_DRAW_LINE:I

    .line 69
    iput v5, p0, Let/song/ui/widgets/ETRightRocker;->GUIJI_STATUS_DRAW_PLANE:I

    .line 70
    iput v3, p0, Let/song/ui/widgets/ETRightRocker;->planeStatus:I

    .line 217
    iput-object v2, p0, Let/song/ui/widgets/ETRightRocker;->mPlaneBitmapCanvas:Landroid/graphics/Canvas;

    .line 218
    iput-object v2, p0, Let/song/ui/widgets/ETRightRocker;->mLineBitmap:Landroid/graphics/Bitmap;

    .line 219
    iput-object v2, p0, Let/song/ui/widgets/ETRightRocker;->mPlanePaint:Landroid/graphics/Paint;

    .line 220
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v2, 0x1388

    invoke-direct {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v1, p0, Let/song/ui/widgets/ETRightRocker;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 226
    new-instance v1, Let/song/ui/widgets/ETRightRocker$1;

    invoke-direct {v1, p0}, Let/song/ui/widgets/ETRightRocker$1;-><init>(Let/song/ui/widgets/ETRightRocker;)V

    iput-object v1, p0, Let/song/ui/widgets/ETRightRocker;->mHandler:Landroid/os/Handler;

    .line 277
    new-instance v1, Let/song/ui/widgets/ETRightRocker$2;

    invoke-direct {v1, p0}, Let/song/ui/widgets/ETRightRocker$2;-><init>(Let/song/ui/widgets/ETRightRocker;)V

    iput-object v1, p0, Let/song/ui/widgets/ETRightRocker;->updatePlanePos:Ljava/lang/Runnable;

    .line 79
    iput-object p1, p0, Let/song/ui/widgets/ETRightRocker;->mContext:Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Let/song/ui/widgets/ETRightRocker;->initView()V

    .line 82
    sget-object v1, Lmacrochip/app/newpl1200/R$styleable;->ETRockerView:[I

    .line 81
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "tArray":Landroid/content/res/TypedArray;
    sget-object v1, Let/song/ui/widgets/ETRightRocker;->mBitmapBg:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 85
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Let/song/ui/widgets/ETRightRocker;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Let/song/ui/widgets/ETRightRocker;->mBitmapBg:Landroid/graphics/Bitmap;

    .line 86
    :cond_0
    sget-object v1, Let/song/ui/widgets/ETRightRocker;->mBitmapBall:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 87
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Let/song/ui/widgets/ETRightRocker;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Let/song/ui/widgets/ETRightRocker;->mBitmapBall:Landroid/graphics/Bitmap;

    .line 88
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    invoke-direct {p0, v1}, Let/song/ui/widgets/ETRightRocker;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Let/song/ui/widgets/ETRightRocker;->mBallSize:I

    .line 89
    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {p0, v1}, Let/song/ui/widgets/ETRightRocker;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Let/song/ui/widgets/ETRightRocker;->mMarginSize:I

    .line 91
    sget-object v1, Let/song/ui/widgets/ETRightRocker;->mBitmapPlane:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 93
    invoke-virtual {p0}, Let/song/ui/widgets/ETRightRocker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020057

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Let/song/ui/widgets/ETRightRocker;->mBitmapPlane:Landroid/graphics/Bitmap;

    .line 97
    :cond_2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Let/song/ui/widgets/ETRightRocker;->mPaint:Landroid/graphics/Paint;

    .line 98
    return-void
.end method

.method private static CreateCircle(ILandroid/graphics/Paint;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "width"    # I
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v6, 0x0

    .line 559
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 560
    .local v1, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 561
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6, v6, p0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 562
    .local v3, "rect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 563
    .local v4, "rectF":Landroid/graphics/RectF;
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 564
    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 566
    mul-int v5, p0, p0

    int-to-double v6, v5

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v6, v8

    double-to-int v2, v6

    .line 567
    .local v2, "radius":I
    int-to-float v5, v2

    int-to-float v6, v2

    invoke-virtual {v0, v4, v5, v6, p1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 568
    invoke-virtual {v0, v1, v3, v3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 569
    return-object v1
.end method

.method static synthetic access$0(Let/song/ui/widgets/ETRightRocker;)[I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->planeCoord:[I

    return-object v0
.end method

.method static synthetic access$1(Let/song/ui/widgets/ETRightRocker;)[I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    return-object v0
.end method

.method static synthetic access$10(Let/song/ui/widgets/ETRightRocker;Let/song/ui/widgets/ETRightRocker$trackPoint;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Let/song/ui/widgets/ETRightRocker;->PointNoFive:Let/song/ui/widgets/ETRightRocker$trackPoint;

    return-void
.end method

.method static synthetic access$11(Let/song/ui/widgets/ETRightRocker;)Let/song/ui/widgets/ETRightRocker$trackPoint;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->PointNoFive:Let/song/ui/widgets/ETRightRocker$trackPoint;

    return-object v0
.end method

.method static synthetic access$12(Let/song/ui/widgets/ETRightRocker;)Let/song/ui/widgets/ETRightRocker$trackPoint;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->PointNoOne:Let/song/ui/widgets/ETRightRocker$trackPoint;

    return-object v0
.end method

.method static synthetic access$2(Let/song/ui/widgets/ETRightRocker;I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Let/song/ui/widgets/ETRightRocker;->planeStatus:I

    return-void
.end method

.method static synthetic access$3(Let/song/ui/widgets/ETRightRocker;)[I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    return-object v0
.end method

.method static synthetic access$4(Let/song/ui/widgets/ETRightRocker;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Let/song/ui/widgets/ETRightRocker;->ismLock:Z

    return v0
.end method

.method static synthetic access$5(Let/song/ui/widgets/ETRightRocker;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->mode:I

    return v0
.end method

.method static synthetic access$6(Let/song/ui/widgets/ETRightRocker;I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Let/song/ui/widgets/ETRightRocker;->pointIdx:I

    return-void
.end method

.method static synthetic access$7(Let/song/ui/widgets/ETRightRocker;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8(Let/song/ui/widgets/ETRightRocker;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->pointIdx:I

    return v0
.end method

.method static synthetic access$9(Let/song/ui/widgets/ETRightRocker;Let/song/ui/widgets/ETRightRocker$trackPoint;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Let/song/ui/widgets/ETRightRocker;->PointNoOne:Let/song/ui/widgets/ETRightRocker$trackPoint;

    return-void
.end method

.method private dip2px(F)I
    .locals 2
    .param p1, "dpValue"    # F

    .prologue
    .line 609
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 573
    if-nez p1, :cond_1

    .line 590
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 575
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 576
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 577
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    instance-of v2, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_0

    .line 580
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 581
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 582
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 579
    :goto_1
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 584
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 585
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 586
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 585
    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 587
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 583
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 101
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Let/song/ui/widgets/ETRightRocker;->dm:Landroid/util/DisplayMetrics;

    .line 102
    iget-object v1, p0, Let/song/ui/widgets/ETRightRocker;->mContext:Landroid/content/Context;

    .line 103
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    check-cast v0, Landroid/view/WindowManager;

    .line 104
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Let/song/ui/widgets/ETRightRocker;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 105
    return-void
.end method

.method public static resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v1, 0x0

    .line 596
    move-object v0, p0

    .line 597
    .local v0, "BitmapOrg":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 598
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 599
    .local v4, "height":I
    move v8, p1

    .line 600
    .local v8, "newWidth":I
    move v7, p2

    .line 601
    .local v7, "newHeight":I
    int-to-float v2, v8

    int-to-float v6, v3

    div-float v10, v2, v6

    .line 602
    .local v10, "scaleWidth":F
    int-to-float v2, v7

    int-to-float v6, v4

    div-float v9, v2, v6

    .line 603
    .local v9, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 604
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v10, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 606
    const/4 v6, 0x1

    move v2, v1

    .line 605
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public Refresh()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 509
    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    aget v3, v3, v10

    int-to-double v4, v3

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    aget v3, v3, v11

    int-to-double v6, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    iget v3, p0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    int-to-double v6, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 511
    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    aget v3, v3, v10

    int-to-double v4, v3

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    aget v3, v3, v11

    int-to-double v6, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 512
    .local v2, "xie":F
    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    aget v3, v3, v10

    int-to-float v3, v3

    div-float v0, v3, v2

    .line 513
    .local v0, "cosAngle":F
    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    iget v4, p0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    aput v4, v3, v10

    .line 514
    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    aget v3, v3, v11

    int-to-float v3, v3

    div-float v1, v3, v2

    .line 515
    .local v1, "sinAngle":F
    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    iget v4, p0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    aput v4, v3, v11

    .line 517
    .end local v0    # "cosAngle":F
    .end local v1    # "sinAngle":F
    .end local v2    # "xie":F
    :cond_0
    invoke-virtual {p0}, Let/song/ui/widgets/ETRightRocker;->invalidate()V

    .line 518
    return-void
.end method

.method public getMaxX()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->mMaxX:I

    return v0
.end method

.method public getMaxY()I
    .locals 1

    .prologue
    .line 542
    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->mMaxY:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->mode:I

    return v0
.end method

.method public getXV()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->mActiveSize:I

    if-gtz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    .line 111
    :cond_0
    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 113
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    aget v0, v0, v2

    iget v1, p0, Let/song/ui/widgets/ETRightRocker;->mMaxX:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    aget v0, v0, v2

    iget v1, p0, Let/song/ui/widgets/ETRightRocker;->mMaxX:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    div-int/2addr v0, v1

    iget v1, p0, Let/song/ui/widgets/ETRightRocker;->mMaxX:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getYV()F
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 123
    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->mActiveSize:I

    if-gtz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    .line 128
    :cond_0
    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->mode:I

    if-ne v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    aget v0, v0, v1

    iget v1, p0, Let/song/ui/widgets/ETRightRocker;->mMaxY:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    aget v0, v0, v1

    iget v1, p0, Let/song/ui/widgets/ETRightRocker;->mMaxY:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    div-int/2addr v0, v1

    iget v1, p0, Let/song/ui/widgets/ETRightRocker;->mMaxY:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method public isLock()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Let/song/ui/widgets/ETRightRocker;->ismLock:Z

    return v0
.end method

.method public isManual()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Let/song/ui/widgets/ETRightRocker;->ismManual:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 181
    iget v2, p0, Let/song/ui/widgets/ETRightRocker;->mode:I

    if-ne v2, v6, :cond_3

    .line 183
    iget-object v2, p0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    aget v2, v2, v5

    iget v3, p0, Let/song/ui/widgets/ETRightRocker;->mBallSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker;->planeCoord:[I

    aget v3, v3, v5

    add-int v0, v2, v3

    .line 184
    .local v0, "ballX":I
    iget-object v2, p0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    aget v2, v2, v6

    iget v3, p0, Let/song/ui/widgets/ETRightRocker;->mBallSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker;->planeCoord:[I

    aget v3, v3, v6

    sub-int v1, v2, v3

    .line 187
    .local v1, "ballY":I
    iget-object v2, p0, Let/song/ui/widgets/ETRightRocker;->mLineBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Let/song/ui/widgets/ETRightRocker;->mPlanePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Let/song/ui/widgets/ETRightRocker;->mLineBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker;->mPlanePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 191
    :cond_0
    iget v2, p0, Let/song/ui/widgets/ETRightRocker;->planeStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 193
    sget-object v2, Let/song/ui/widgets/ETRightRocker;->mBitmapPlane:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {p1, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 196
    :cond_1
    iget-object v2, p0, Let/song/ui/widgets/ETRightRocker;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Let/song/ui/widgets/ETRightRocker;->mPlaneBitmapCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Let/song/ui/widgets/ETRightRocker;->mPlaneBitmapCanvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 212
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 213
    return-void

    .line 205
    .end local v0    # "ballX":I
    .end local v1    # "ballY":I
    :cond_3
    iget-object v2, p0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    aget v2, v2, v5

    iget v3, p0, Let/song/ui/widgets/ETRightRocker;->mBallSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    aget v3, v3, v5

    add-int v0, v2, v3

    .line 206
    .restart local v0    # "ballX":I
    iget-object v2, p0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    aget v2, v2, v6

    iget v3, p0, Let/song/ui/widgets/ETRightRocker;->mBallSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    aget v3, v3, v6

    sub-int v1, v2, v3

    .line 208
    .restart local v1    # "ballY":I
    sget-object v2, Let/song/ui/widgets/ETRightRocker;->mBitmapBg:Landroid/graphics/Bitmap;

    iget-object v3, p0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    aget v3, v3, v5

    iget v4, p0, Let/song/ui/widgets/ETRightRocker;->mActiveSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    aget v4, v4, v6

    iget v5, p0, Let/song/ui/widgets/ETRightRocker;->mActiveSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 209
    sget-object v2, Let/song/ui/widgets/ETRightRocker;->mBitmapBall:Landroid/graphics/Bitmap;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {p1, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 149
    invoke-virtual {p0}, Let/song/ui/widgets/ETRightRocker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Let/song/ui/widgets/ETRightRocker;->canvasHeight:I

    .line 150
    invoke-virtual {p0}, Let/song/ui/widgets/ETRightRocker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Let/song/ui/widgets/ETRightRocker;->canvasWidth:I

    .line 151
    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->canvasWidth:I

    iget v1, p0, Let/song/ui/widgets/ETRightRocker;->canvasHeight:I

    if-le v0, v1, :cond_1

    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->canvasHeight:I

    :goto_0
    iget v1, p0, Let/song/ui/widgets/ETRightRocker;->mMarginSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Let/song/ui/widgets/ETRightRocker;->mActiveSize:I

    .line 152
    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->mActiveSize:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Let/song/ui/widgets/ETRightRocker;->mBallSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    .line 153
    sget-object v0, Let/song/ui/widgets/ETRightRocker;->mBitmapBg:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 155
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->mPaint:Landroid/graphics/Paint;

    const v1, -0x70131314

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->mActiveSize:I

    iget-object v1, p0, Let/song/ui/widgets/ETRightRocker;->mPaint:Landroid/graphics/Paint;

    invoke-static {v0, v1}, Let/song/ui/widgets/ETRightRocker;->CreateCircle(ILandroid/graphics/Paint;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Let/song/ui/widgets/ETRightRocker;->mBitmapBg:Landroid/graphics/Bitmap;

    .line 162
    :goto_1
    sget-object v0, Let/song/ui/widgets/ETRightRocker;->mBitmapBall:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 164
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->mPaint:Landroid/graphics/Paint;

    const v1, -0x70cc9901

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->mBallSize:I

    iget-object v1, p0, Let/song/ui/widgets/ETRightRocker;->mPaint:Landroid/graphics/Paint;

    invoke-static {v0, v1}, Let/song/ui/widgets/ETRightRocker;->CreateCircle(ILandroid/graphics/Paint;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Let/song/ui/widgets/ETRightRocker;->mBitmapBall:Landroid/graphics/Bitmap;

    .line 171
    :goto_2
    sget-object v0, Let/song/ui/widgets/ETRightRocker;->mBitmapPlane:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Let/song/ui/widgets/ETRightRocker;->mBitmapPlane:Landroid/graphics/Bitmap;

    iget v1, p0, Let/song/ui/widgets/ETRightRocker;->mBallSize:I

    iget v2, p0, Let/song/ui/widgets/ETRightRocker;->mBallSize:I

    invoke-static {v0, v1, v2}, Let/song/ui/widgets/ETRightRocker;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Let/song/ui/widgets/ETRightRocker;->mBitmapPlane:Landroid/graphics/Bitmap;

    .line 174
    :cond_0
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    const/4 v1, 0x0

    iget v2, p0, Let/song/ui/widgets/ETRightRocker;->canvasWidth:I

    div-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    .line 175
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    const/4 v1, 0x1

    iget v2, p0, Let/song/ui/widgets/ETRightRocker;->canvasHeight:I

    div-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    .line 176
    return-void

    .line 151
    :cond_1
    iget v0, p0, Let/song/ui/widgets/ETRightRocker;->canvasWidth:I

    goto :goto_0

    .line 160
    :cond_2
    sget-object v0, Let/song/ui/widgets/ETRightRocker;->mBitmapBg:Landroid/graphics/Bitmap;

    iget v1, p0, Let/song/ui/widgets/ETRightRocker;->canvasWidth:I

    iget v2, p0, Let/song/ui/widgets/ETRightRocker;->mMarginSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Let/song/ui/widgets/ETRightRocker;->canvasHeight:I

    iget v3, p0, Let/song/ui/widgets/ETRightRocker;->mMarginSize:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Let/song/ui/widgets/ETRightRocker;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Let/song/ui/widgets/ETRightRocker;->mBitmapBg:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 169
    :cond_3
    sget-object v0, Let/song/ui/widgets/ETRightRocker;->mBitmapBall:Landroid/graphics/Bitmap;

    iget v1, p0, Let/song/ui/widgets/ETRightRocker;->mBallSize:I

    iget v2, p0, Let/song/ui/widgets/ETRightRocker;->mBallSize:I

    invoke-static {v0, v1, v2}, Let/song/ui/widgets/ETRightRocker;->resizeImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Let/song/ui/widgets/ETRightRocker;->mBitmapBall:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 345
    move-object/from16 v0, p0

    iget-boolean v2, v0, Let/song/ui/widgets/ETRightRocker;->ismManual:Z

    if-nez v2, :cond_0

    .line 346
    const/4 v2, 0x0

    .line 505
    :goto_0
    return v2

    .line 347
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v11, v2

    .line 348
    .local v11, "currentX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v12, v2

    .line 349
    .local v12, "currentY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v2, v3

    sub-int v2, v11, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Let/song/ui/widgets/ETRightRocker;->mActiveSize:I

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    sub-int v2, v12, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Let/song/ui/widgets/ETRightRocker;->mActiveSize:I

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    .line 353
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Let/song/ui/widgets/ETRightRocker;->isPress:Z

    .line 356
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 363
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Let/song/ui/widgets/ETRightRocker;->planeStatus:I

    .line 365
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Let/song/ui/widgets/ETRightRocker;->startX:F

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Let/song/ui/widgets/ETRightRocker;->startY:F

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->mLineBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 370
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->canvasWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Let/song/ui/widgets/ETRightRocker;->canvasHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Let/song/ui/widgets/ETRightRocker;->mLineBitmap:Landroid/graphics/Bitmap;

    .line 371
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Let/song/ui/widgets/ETRightRocker;->mLineBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Let/song/ui/widgets/ETRightRocker;->mPlaneBitmapCanvas:Landroid/graphics/Canvas;

    .line 373
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Let/song/ui/widgets/ETRightRocker;->mPlanePaint:Landroid/graphics/Paint;

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->mPlanePaint:Landroid/graphics/Paint;

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->mPlanePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 504
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Let/song/ui/widgets/ETRightRocker;->invalidate()V

    .line 505
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 383
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 386
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Let/song/ui/widgets/ETRightRocker;->updatePlanePos:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 400
    :cond_5
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Let/song/ui/widgets/ETRightRocker;->isPress:Z

    goto :goto_1

    .line 393
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 394
    move-object/from16 v0, p0

    iget-boolean v2, v0, Let/song/ui/widgets/ETRightRocker;->ismLock:Z

    if-eqz v2, :cond_5

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    goto :goto_2

    .line 403
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 404
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 406
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 407
    .local v5, "stopX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 411
    .local v6, "stopY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->mPlaneBitmapCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_8

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->mPlaneBitmapCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v3, v0, Let/song/ui/widgets/ETRightRocker;->startX:F

    move-object/from16 v0, p0

    iget v4, v0, Let/song/ui/widgets/ETRightRocker;->startY:F

    move-object/from16 v0, p0

    iget-object v7, v0, Let/song/ui/widgets/ETRightRocker;->mPlanePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 417
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->startX:F

    sub-float v2, v5, v2

    float-to-double v2, v2

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v18

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget v4, v0, Let/song/ui/widgets/ETRightRocker;->startY:F

    sub-float v4, v6, v4

    float-to-double v0, v4

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v17, v0

    .line 421
    .local v17, "xie":F
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->pointLength:I

    int-to-float v2, v2

    add-float v2, v2, v17

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Let/song/ui/widgets/ETRightRocker;->pointLength:I

    .line 422
    const/16 v8, 0xa

    .line 423
    .local v8, "base":I
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->pointLength:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_9

    .line 426
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->pointLength:I

    div-int/lit8 v9, v2, 0xa

    .line 428
    .local v9, "chu":I
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->startY:F

    sub-float v2, v6, v2

    div-float v16, v2, v17

    .line 429
    .local v16, "sinAngle":F
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->startX:F

    sub-float v2, v5, v2

    div-float v10, v2, v17

    .line 430
    .local v10, "cosAngle":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-lt v14, v9, :cond_a

    .line 448
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Let/song/ui/widgets/ETRightRocker;->pointLength:I

    .line 451
    .end local v9    # "chu":I
    .end local v10    # "cosAngle":F
    .end local v14    # "i":I
    .end local v16    # "sinAngle":F
    :cond_9
    move-object/from16 v0, p0

    iput v5, v0, Let/song/ui/widgets/ETRightRocker;->startX:F

    .line 452
    move-object/from16 v0, p0

    iput v6, v0, Let/song/ui/widgets/ETRightRocker;->startY:F

    goto/16 :goto_1

    .line 432
    .restart local v9    # "chu":I
    .restart local v10    # "cosAngle":F
    .restart local v14    # "i":I
    .restart local v16    # "sinAngle":F
    :cond_a
    new-instance v15, Let/song/ui/widgets/ETRightRocker$trackPoint;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Let/song/ui/widgets/ETRightRocker$trackPoint;-><init>(Let/song/ui/widgets/ETRightRocker;Let/song/ui/widgets/ETRightRocker$trackPoint;)V

    .line 433
    .local v15, "p":Let/song/ui/widgets/ETRightRocker$trackPoint;
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->startX:F

    float-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v10

    int-to-float v4, v14

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v15, Let/song/ui/widgets/ETRightRocker$trackPoint;->x:F

    .line 434
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->startY:F

    float-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v3, v3, v16

    int-to-float v4, v14

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v15, Let/song/ui/widgets/ETRightRocker$trackPoint;->y:F

    .line 436
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v2

    if-eqz v2, :cond_b

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v15}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :cond_b
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 441
    :catch_0
    move-exception v13

    .line 443
    .local v13, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 471
    .end local v5    # "stopX":F
    .end local v6    # "stopY":F
    .end local v8    # "base":I
    .end local v9    # "chu":I
    .end local v10    # "cosAngle":F
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .end local v14    # "i":I
    .end local v15    # "p":Let/song/ui/widgets/ETRightRocker$trackPoint;
    .end local v16    # "sinAngle":F
    .end local v17    # "xie":F
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Let/song/ui/widgets/ETRightRocker;->isPress:Z

    if-eqz v2, :cond_3

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    const/4 v7, 0x0

    aget v4, v4, v7

    sub-int v4, v11, v4

    aput v4, v2, v3

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Let/song/ui/widgets/ETRightRocker;->centerCoord:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    sub-int/2addr v4, v12

    aput v4, v2, v3

    .line 475
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->mode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-double v2, v2

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v18

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    int-to-double v0, v4

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v2, v2, v18

    move-object/from16 v0, p0

    iget v4, v0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    int-to-double v0, v4

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    cmpl-double v2, v2, v18

    if-lez v2, :cond_d

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-double v2, v2

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    move-wide/from16 v0, v18

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    int-to-double v0, v4

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v17, v0

    .line 480
    .restart local v17    # "xie":F
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    div-float v10, v2, v17

    .line 481
    .restart local v10    # "cosAngle":F
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v10

    float-to-int v4, v4

    aput v4, v2, v3

    .line 482
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    div-float v16, v2, v17

    .line 483
    .restart local v16    # "sinAngle":F
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    int-to-float v4, v4

    mul-float v4, v4, v16

    float-to-int v4, v4

    aput v4, v2, v3

    goto/16 :goto_1

    .line 487
    .end local v10    # "cosAngle":F
    .end local v16    # "sinAngle":F
    .end local v17    # "xie":F
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    if-le v2, v3, :cond_e

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v7, 0x0

    aget v2, v2, v7

    if-lez v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    :goto_5
    aput v2, v3, v4

    .line 491
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    if-le v2, v3, :cond_3

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v7, 0x1

    aget v2, v2, v7

    if-lez v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    :goto_6
    aput v2, v3, v4

    goto/16 :goto_1

    .line 489
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    neg-int v2, v2

    goto :goto_5

    .line 493
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    neg-int v2, v2

    goto :goto_6
.end method

.method public setBitmapBall(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmapBall"    # Landroid/graphics/Bitmap;

    .prologue
    .line 144
    sput-object p1, Let/song/ui/widgets/ETRightRocker;->mBitmapBall:Landroid/graphics/Bitmap;

    .line 145
    return-void
.end method

.method public setBitmapBg(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmapBg"    # Landroid/graphics/Bitmap;

    .prologue
    .line 140
    sput-object p1, Let/song/ui/widgets/ETRightRocker;->mBitmapBg:Landroid/graphics/Bitmap;

    .line 141
    return-void
.end method

.method public setLock(Z)V
    .locals 3
    .param p1, "lock"    # Z

    .prologue
    const/4 v2, 0x0

    .line 524
    iput-boolean p1, p0, Let/song/ui/widgets/ETRightRocker;->ismLock:Z

    .line 525
    iget-boolean v0, p0, Let/song/ui/widgets/ETRightRocker;->ismLock:Z

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    aput v2, v0, v2

    .line 528
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 529
    invoke-virtual {p0}, Let/song/ui/widgets/ETRightRocker;->Refresh()V

    .line 531
    :cond_0
    return-void
.end method

.method public setManual(Z)V
    .locals 0
    .param p1, "manual"    # Z

    .prologue
    .line 538
    iput-boolean p1, p0, Let/song/ui/widgets/ETRightRocker;->ismManual:Z

    .line 539
    return-void
.end method

.method public setMaxX(I)V
    .locals 0
    .param p1, "mMaxX"    # I

    .prologue
    .line 554
    iput p1, p0, Let/song/ui/widgets/ETRightRocker;->mMaxX:I

    .line 555
    return-void
.end method

.method public setMaxY(I)V
    .locals 0
    .param p1, "mMaxY"    # I

    .prologue
    .line 546
    iput p1, p0, Let/song/ui/widgets/ETRightRocker;->mMaxY:I

    .line 547
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 615
    iput p1, p0, Let/song/ui/widgets/ETRightRocker;->mode:I

    .line 616
    invoke-virtual {p0}, Let/song/ui/widgets/ETRightRocker;->invalidate()V

    .line 617
    return-void
.end method

.method public setXV(I)V
    .locals 4
    .param p1, "mXV"    # I

    .prologue
    .line 119
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v1, 0x0

    iget v2, p0, Let/song/ui/widgets/ETRightRocker;->mMaxX:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    iget v3, p0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    mul-int/2addr v2, v3

    iget v3, p0, Let/song/ui/widgets/ETRightRocker;->mMaxX:I

    div-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    aput v2, v0, v1

    .line 120
    return-void
.end method

.method public setYV(I)V
    .locals 4
    .param p1, "mYV"    # I

    .prologue
    .line 136
    iget-object v0, p0, Let/song/ui/widgets/ETRightRocker;->ballCoord:[I

    const/4 v1, 0x1

    iget v2, p0, Let/song/ui/widgets/ETRightRocker;->mMaxY:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    iget v3, p0, Let/song/ui/widgets/ETRightRocker;->mRadius:I

    mul-int/2addr v2, v3

    iget v3, p0, Let/song/ui/widgets/ETRightRocker;->mMaxY:I

    div-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    aput v2, v0, v1

    .line 137
    return-void
.end method
