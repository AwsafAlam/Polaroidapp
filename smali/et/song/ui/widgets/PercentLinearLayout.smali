.class public Let/song/ui/widgets/PercentLinearLayout;
.super Landroid/widget/LinearLayout;
.source "PercentLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Let/song/ui/widgets/PercentLinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PercentLinearLayout"


# instance fields
.field private mPercentLayoutHelper:Let/song/ui/widgets/PercentLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Let/song/ui/widgets/PercentLayoutHelper;

    invoke-direct {v0, p0}, Let/song/ui/widgets/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Let/song/ui/widgets/PercentLinearLayout;->mPercentLayoutHelper:Let/song/ui/widgets/PercentLayoutHelper;

    .line 25
    return-void
.end method

.method private getScreenHeight()I
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p0}, Let/song/ui/widgets/PercentLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 61
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 62
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 63
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Let/song/ui/widgets/PercentLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Let/song/ui/widgets/PercentLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Let/song/ui/widgets/PercentLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Let/song/ui/widgets/PercentLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Let/song/ui/widgets/PercentLinearLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    new-instance v0, Let/song/ui/widgets/PercentLinearLayout$LayoutParams;

    invoke-virtual {p0}, Let/song/ui/widgets/PercentLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Let/song/ui/widgets/PercentLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 68
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 69
    iget-object v0, p0, Let/song/ui/widgets/PercentLinearLayout;->mPercentLayoutHelper:Let/song/ui/widgets/PercentLayoutHelper;

    invoke-virtual {v0}, Let/song/ui/widgets/PercentLayoutHelper;->restoreOriginalParams()V

    .line 70
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 30
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 31
    .local v4, "heightSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 32
    .local v3, "heightMode":I
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 34
    .local v6, "tmpHeightMeasureSpec":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 35
    .local v9, "widthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 36
    .local v8, "widthMode":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 39
    .local v7, "tmpWidthMeasureSpec":I
    if-nez v3, :cond_0

    invoke-virtual {p0}, Let/song/ui/widgets/PercentLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Let/song/ui/widgets/PercentLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Landroid/widget/ScrollView;

    if-eqz v10, :cond_0

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "baseHeight":I
    invoke-virtual {p0}, Let/song/ui/widgets/PercentLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 42
    .local v2, "context":Landroid/content/Context;
    instance-of v10, v2, Landroid/app/Activity;

    if-eqz v10, :cond_2

    move-object v0, v2

    .line 43
    check-cast v0, Landroid/app/Activity;

    .line 44
    .local v0, "act":Landroid/app/Activity;
    const v10, 0x1020002

    invoke-virtual {v0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 45
    .local v5, "measuredHeight":I
    move v1, v5

    .line 49
    .end local v0    # "act":Landroid/app/Activity;
    .end local v5    # "measuredHeight":I
    :goto_0
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 52
    .end local v1    # "baseHeight":I
    .end local v2    # "context":Landroid/content/Context;
    :cond_0
    iget-object v10, p0, Let/song/ui/widgets/PercentLinearLayout;->mPercentLayoutHelper:Let/song/ui/widgets/PercentLayoutHelper;

    invoke-virtual {v10, v7, v6}, Let/song/ui/widgets/PercentLayoutHelper;->adjustChildren(II)V

    .line 53
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 54
    iget-object v10, p0, Let/song/ui/widgets/PercentLinearLayout;->mPercentLayoutHelper:Let/song/ui/widgets/PercentLayoutHelper;

    invoke-virtual {v10}, Let/song/ui/widgets/PercentLayoutHelper;->handleMeasuredStateTooSmall()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 57
    :cond_1
    return-void

    .line 47
    .restart local v1    # "baseHeight":I
    .restart local v2    # "context":Landroid/content/Context;
    :cond_2
    invoke-direct {p0}, Let/song/ui/widgets/PercentLinearLayout;->getScreenHeight()I

    move-result v1

    goto :goto_0
.end method
