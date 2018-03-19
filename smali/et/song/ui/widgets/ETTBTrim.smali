.class public Let/song/ui/widgets/ETTBTrim;
.super Landroid/widget/RelativeLayout;
.source "ETTBTrim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Let/song/ui/widgets/ETTBTrim$OnClickListener;
    }
.end annotation


# instance fields
.field private handlerLongClick:Landroid/os/Handler;

.field private listener:Let/song/ui/widgets/ETTBTrim$OnClickListener;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBall:Landroid/widget/ImageView;

.field private mBallBackground:Landroid/graphics/drawable/Drawable;

.field private mBg:Landroid/widget/RelativeLayout;

.field private mBgWidth:I

.field private mIsLeftLongClick:Z

.field private mIsRightLongClick:Z

.field private mLeftBackground:Landroid/graphics/drawable/Drawable;

.field private mLeftButton:Let/song/ui/widgets/ETButton;

.field private mMax:I

.field private mMin:I

.field private mPos:I

.field private mRightBackground:Landroid/graphics/drawable/Drawable;

.field private mRightButton:Let/song/ui/widgets/ETButton;

.field private mStep:I

.field runnableLongClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput v0, p0, Let/song/ui/widgets/ETTBTrim;->mPos:I

    .line 36
    iput v0, p0, Let/song/ui/widgets/ETTBTrim;->mBgWidth:I

    .line 37
    iput v0, p0, Let/song/ui/widgets/ETTBTrim;->mStep:I

    .line 38
    iput-boolean v0, p0, Let/song/ui/widgets/ETTBTrim;->mIsLeftLongClick:Z

    .line 39
    iput-boolean v0, p0, Let/song/ui/widgets/ETTBTrim;->mIsRightLongClick:Z

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Let/song/ui/widgets/ETTBTrim;->handlerLongClick:Landroid/os/Handler;

    .line 211
    new-instance v0, Let/song/ui/widgets/ETTBTrim$1;

    invoke-direct {v0, p0}, Let/song/ui/widgets/ETTBTrim$1;-><init>(Let/song/ui/widgets/ETTBTrim;)V

    iput-object v0, p0, Let/song/ui/widgets/ETTBTrim;->runnableLongClick:Ljava/lang/Runnable;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v4, p0, Let/song/ui/widgets/ETTBTrim;->mPos:I

    .line 36
    iput v4, p0, Let/song/ui/widgets/ETTBTrim;->mBgWidth:I

    .line 37
    iput v4, p0, Let/song/ui/widgets/ETTBTrim;->mStep:I

    .line 38
    iput-boolean v4, p0, Let/song/ui/widgets/ETTBTrim;->mIsLeftLongClick:Z

    .line 39
    iput-boolean v4, p0, Let/song/ui/widgets/ETTBTrim;->mIsRightLongClick:Z

    .line 210
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Let/song/ui/widgets/ETTBTrim;->handlerLongClick:Landroid/os/Handler;

    .line 211
    new-instance v3, Let/song/ui/widgets/ETTBTrim$1;

    invoke-direct {v3, p0}, Let/song/ui/widgets/ETTBTrim$1;-><init>(Let/song/ui/widgets/ETTBTrim;)V

    iput-object v3, p0, Let/song/ui/widgets/ETTBTrim;->runnableLongClick:Ljava/lang/Runnable;

    .line 61
    const-string v0, "layout_inflater"

    .line 62
    .local v0, "infService":Ljava/lang/String;
    invoke-virtual {p0}, Let/song/ui/widgets/ETTBTrim;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 64
    .local v1, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f03002f

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 67
    sget-object v3, Lmacrochip/app/newpl1200/R$styleable;->ETTrim:[I

    .line 66
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 69
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Let/song/ui/widgets/ETTBTrim;->mMin:I

    .line 70
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Let/song/ui/widgets/ETTBTrim;->mMax:I

    .line 71
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mBallBackground:Landroid/graphics/drawable/Drawable;

    .line 72
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    .line 73
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mRightBackground:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    const v3, 0x7f0b00cc

    invoke-virtual {p0, v3}, Let/song/ui/widgets/ETTBTrim;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Let/song/ui/widgets/ETButton;

    iput-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mLeftButton:Let/song/ui/widgets/ETButton;

    .line 78
    const v3, 0x7f0b00cf

    invoke-virtual {p0, v3}, Let/song/ui/widgets/ETTBTrim;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Let/song/ui/widgets/ETButton;

    iput-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mRightButton:Let/song/ui/widgets/ETButton;

    .line 79
    const v3, 0x7f0b00cd

    invoke-virtual {p0, v3}, Let/song/ui/widgets/ETTBTrim;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mBg:Landroid/widget/RelativeLayout;

    .line 80
    const v3, 0x7f0b00ce

    invoke-virtual {p0, v3}, Let/song/ui/widgets/ETTBTrim;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mBall:Landroid/widget/ImageView;

    .line 81
    iget-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mLeftButton:Let/song/ui/widgets/ETButton;

    iget-object v4, p0, Let/song/ui/widgets/ETTBTrim;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Let/song/ui/widgets/ETButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mRightButton:Let/song/ui/widgets/ETButton;

    iget-object v4, p0, Let/song/ui/widgets/ETTBTrim;->mRightBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Let/song/ui/widgets/ETButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mBg:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Let/song/ui/widgets/ETTBTrim;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mBall:Landroid/widget/ImageView;

    iget-object v4, p0, Let/song/ui/widgets/ETTBTrim;->mBallBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mLeftButton:Let/song/ui/widgets/ETButton;

    new-instance v4, Let/song/ui/widgets/ETTBTrim$2;

    invoke-direct {v4, p0}, Let/song/ui/widgets/ETTBTrim$2;-><init>(Let/song/ui/widgets/ETTBTrim;)V

    invoke-virtual {v3, v4}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mLeftButton:Let/song/ui/widgets/ETButton;

    new-instance v4, Let/song/ui/widgets/ETTBTrim$3;

    invoke-direct {v4, p0}, Let/song/ui/widgets/ETTBTrim$3;-><init>(Let/song/ui/widgets/ETTBTrim;)V

    invoke-virtual {v3, v4}, Let/song/ui/widgets/ETButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 112
    iget-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mLeftButton:Let/song/ui/widgets/ETButton;

    new-instance v4, Let/song/ui/widgets/ETTBTrim$4;

    invoke-direct {v4, p0}, Let/song/ui/widgets/ETTBTrim$4;-><init>(Let/song/ui/widgets/ETTBTrim;)V

    invoke-virtual {v3, v4}, Let/song/ui/widgets/ETButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    iget-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mRightButton:Let/song/ui/widgets/ETButton;

    new-instance v4, Let/song/ui/widgets/ETTBTrim$5;

    invoke-direct {v4, p0}, Let/song/ui/widgets/ETTBTrim$5;-><init>(Let/song/ui/widgets/ETTBTrim;)V

    invoke-virtual {v3, v4}, Let/song/ui/widgets/ETButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mRightButton:Let/song/ui/widgets/ETButton;

    new-instance v4, Let/song/ui/widgets/ETTBTrim$6;

    invoke-direct {v4, p0}, Let/song/ui/widgets/ETTBTrim$6;-><init>(Let/song/ui/widgets/ETTBTrim;)V

    invoke-virtual {v3, v4}, Let/song/ui/widgets/ETButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 154
    iget-object v3, p0, Let/song/ui/widgets/ETTBTrim;->mRightButton:Let/song/ui/widgets/ETButton;

    new-instance v4, Let/song/ui/widgets/ETTBTrim$7;

    invoke-direct {v4, p0}, Let/song/ui/widgets/ETTBTrim$7;-><init>(Let/song/ui/widgets/ETTBTrim;)V

    invoke-virtual {v3, v4}, Let/song/ui/widgets/ETButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput v0, p0, Let/song/ui/widgets/ETTBTrim;->mPos:I

    .line 36
    iput v0, p0, Let/song/ui/widgets/ETTBTrim;->mBgWidth:I

    .line 37
    iput v0, p0, Let/song/ui/widgets/ETTBTrim;->mStep:I

    .line 38
    iput-boolean v0, p0, Let/song/ui/widgets/ETTBTrim;->mIsLeftLongClick:Z

    .line 39
    iput-boolean v0, p0, Let/song/ui/widgets/ETTBTrim;->mIsRightLongClick:Z

    .line 210
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Let/song/ui/widgets/ETTBTrim;->handlerLongClick:Landroid/os/Handler;

    .line 211
    new-instance v0, Let/song/ui/widgets/ETTBTrim$1;

    invoke-direct {v0, p0}, Let/song/ui/widgets/ETTBTrim$1;-><init>(Let/song/ui/widgets/ETTBTrim;)V

    iput-object v0, p0, Let/song/ui/widgets/ETTBTrim;->runnableLongClick:Ljava/lang/Runnable;

    .line 178
    return-void
.end method

.method static synthetic access$0(Let/song/ui/widgets/ETTBTrim;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Let/song/ui/widgets/ETTBTrim;->mIsLeftLongClick:Z

    return v0
.end method

.method static synthetic access$1(Let/song/ui/widgets/ETTBTrim;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Let/song/ui/widgets/ETTBTrim;->mPos:I

    return v0
.end method

.method static synthetic access$10(Let/song/ui/widgets/ETTBTrim;Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Let/song/ui/widgets/ETTBTrim;->mIsLeftLongClick:Z

    return-void
.end method

.method static synthetic access$11(Let/song/ui/widgets/ETTBTrim;Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Let/song/ui/widgets/ETTBTrim;->mIsRightLongClick:Z

    return-void
.end method

.method static synthetic access$2(Let/song/ui/widgets/ETTBTrim;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Let/song/ui/widgets/ETTBTrim;->mMin:I

    return v0
.end method

.method static synthetic access$3(Let/song/ui/widgets/ETTBTrim;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Let/song/ui/widgets/ETTBTrim;->mPos:I

    return-void
.end method

.method static synthetic access$4(Let/song/ui/widgets/ETTBTrim;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim;->mBall:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Let/song/ui/widgets/ETTBTrim;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Let/song/ui/widgets/ETTBTrim;->mStep:I

    return v0
.end method

.method static synthetic access$6(Let/song/ui/widgets/ETTBTrim;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Let/song/ui/widgets/ETTBTrim;->mIsRightLongClick:Z

    return v0
.end method

.method static synthetic access$7(Let/song/ui/widgets/ETTBTrim;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Let/song/ui/widgets/ETTBTrim;->mMax:I

    return v0
.end method

.method static synthetic access$8(Let/song/ui/widgets/ETTBTrim;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim;->handlerLongClick:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Let/song/ui/widgets/ETTBTrim;)Let/song/ui/widgets/ETTBTrim$OnClickListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim;->listener:Let/song/ui/widgets/ETTBTrim$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Let/song/ui/widgets/ETTBTrim;->mMax:I

    return v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Let/song/ui/widgets/ETTBTrim;->mPos:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 184
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 196
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 197
    iget-object v0, p0, Let/song/ui/widgets/ETTBTrim;->mBg:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Let/song/ui/libs/ETTool;->ETHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Let/song/ui/widgets/ETTBTrim;->mBgWidth:I

    .line 198
    iget v0, p0, Let/song/ui/widgets/ETTBTrim;->mBgWidth:I

    iget v1, p0, Let/song/ui/widgets/ETTBTrim;->mMax:I

    iget v2, p0, Let/song/ui/widgets/ETTBTrim;->mMin:I

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    iput v0, p0, Let/song/ui/widgets/ETTBTrim;->mStep:I

    .line 199
    iget v0, p0, Let/song/ui/widgets/ETTBTrim;->mMax:I

    iget v1, p0, Let/song/ui/widgets/ETTBTrim;->mMin:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Let/song/ui/widgets/ETTBTrim;->mPos:I

    .line 201
    return-void
.end method

.method public setOnClickListener(Let/song/ui/widgets/ETTBTrim$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Let/song/ui/widgets/ETTBTrim$OnClickListener;

    .prologue
    .line 49
    iput-object p1, p0, Let/song/ui/widgets/ETTBTrim;->listener:Let/song/ui/widgets/ETTBTrim$OnClickListener;

    .line 50
    return-void
.end method
