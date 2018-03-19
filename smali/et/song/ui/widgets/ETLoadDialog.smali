.class public Let/song/ui/widgets/ETLoadDialog;
.super Landroid/app/Dialog;
.source "ETLoadDialog.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Let/song/ui/widgets/ETLoadDialog;->mContext:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Let/song/ui/widgets/ETLoadDialog;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-object p1, p0, Let/song/ui/widgets/ETLoadDialog;->mContext:Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Let/song/ui/widgets/ETLoadDialog;->init()V

    .line 22
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 31
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Let/song/ui/widgets/ETLoadDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    .local v1, "contentView":Landroid/widget/LinearLayout;
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 33
    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 34
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 36
    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Let/song/ui/widgets/ETLoadDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 37
    .local v2, "image":Landroid/widget/ImageView;
    const v4, 0x108007d

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    iget-object v4, p0, Let/song/ui/widgets/ETLoadDialog;->mContext:Landroid/content/Context;

    .line 39
    const v5, 0x7f040001

    .line 38
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 40
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 41
    .local v3, "lir":Landroid/view/animation/LinearInterpolator;
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 42
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0, v1}, Let/song/ui/widgets/ETLoadDialog;->setContentView(Landroid/view/View;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 50
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 53
    :cond_0
    return v1
.end method
