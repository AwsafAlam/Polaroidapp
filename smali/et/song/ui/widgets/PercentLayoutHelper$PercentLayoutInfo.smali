.class public Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;
.super Ljava/lang/Object;
.source "PercentLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Let/song/ui/widgets/PercentLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PercentLayoutInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;,
        Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    }
.end annotation


# instance fields
.field public bottomMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public endMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public heightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public leftMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field final mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field public maxHeightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public maxWidthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public minHeightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public minWidthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public paddingBottomPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public paddingLeftPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public paddingRightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public paddingTopPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public rightMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public startMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public textSizePercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public topMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

.field public widthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput-object v0, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 696
    return-void
.end method


# virtual methods
.method public fillLayoutParams(Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p2, "widthHint"    # I
    .param p3, "heightHint"    # I

    .prologue
    .line 705
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 706
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 708
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-object v1, v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {p2, p3, v1}, Let/song/ui/widgets/PercentLayoutHelper;->access$0(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    .line 710
    .local v0, "base":I
    int-to-float v1, v0

    iget-object v2, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 712
    .end local v0    # "base":I
    :cond_0
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_1

    .line 713
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-object v1, v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {p2, p3, v1}, Let/song/ui/widgets/PercentLayoutHelper;->access$0(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    .line 714
    .restart local v0    # "base":I
    int-to-float v1, v0

    iget-object v2, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 717
    .end local v0    # "base":I
    :cond_1
    const-string v1, "PercentLayout"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 718
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after fillLayoutParams: ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_2
    return-void
.end method

.method public fillMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 4
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "widthHint"    # I
    .param p3, "heightHint"    # I

    .prologue
    .line 727
    invoke-virtual {p0, p1, p2, p3}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->fillLayoutParams(Landroid/view/ViewGroup$LayoutParams;II)V

    .line 731
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 732
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 733
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 734
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 735
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 736
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 738
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_0

    .line 739
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-object v1, v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {p2, p3, v1}, Let/song/ui/widgets/PercentLayoutHelper;->access$0(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    .line 740
    .local v0, "base":I
    int-to-float v1, v0

    iget-object v2, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 742
    .end local v0    # "base":I
    :cond_0
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_1

    .line 743
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-object v1, v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {p2, p3, v1}, Let/song/ui/widgets/PercentLayoutHelper;->access$0(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    .line 744
    .restart local v0    # "base":I
    int-to-float v1, v0

    iget-object v2, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 746
    .end local v0    # "base":I
    :cond_1
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_2

    .line 747
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-object v1, v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {p2, p3, v1}, Let/song/ui/widgets/PercentLayoutHelper;->access$0(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    .line 748
    .restart local v0    # "base":I
    int-to-float v1, v0

    iget-object v2, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 750
    .end local v0    # "base":I
    :cond_2
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_3

    .line 751
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-object v1, v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {p2, p3, v1}, Let/song/ui/widgets/PercentLayoutHelper;->access$0(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    .line 752
    .restart local v0    # "base":I
    int-to-float v1, v0

    iget-object v2, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 754
    .end local v0    # "base":I
    :cond_3
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_4

    .line 755
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-object v1, v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {p2, p3, v1}, Let/song/ui/widgets/PercentLayoutHelper;->access$0(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    .line 756
    .restart local v0    # "base":I
    int-to-float v1, v0

    iget-object v2, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, v1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 758
    .end local v0    # "base":I
    :cond_4
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v1, :cond_5

    .line 759
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget-object v1, v1, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->basemode:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;

    invoke-static {p2, p3, v1}, Let/song/ui/widgets/PercentLayoutHelper;->access$0(IILet/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$BASEMODE;)I

    move-result v0

    .line 760
    .restart local v0    # "base":I
    int-to-float v1, v0

    iget-object v2, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, v1}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 762
    .end local v0    # "base":I
    :cond_5
    const-string v1, "PercentLayout"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 763
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after fillMarginLayoutParams: ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_6
    return-void
.end method

.method public restoreLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 799
    iget-object v0, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 800
    iget-object v0, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 801
    return-void
.end method

.method public restoreMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 784
    invoke-virtual {p0, p1}, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->restoreLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    iget-object v0, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 786
    iget-object v0, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 787
    iget-object v0, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 788
    iget-object v0, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 789
    iget-object v0, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 790
    iget-object v0, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 791
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PercentLayoutInfo{widthPercent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heightPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", leftMarginPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 770
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topMarginPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rightMarginPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 771
    const-string v1, ", bottomMarginPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startMarginPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endMarginPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 772
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textSizePercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->textSizePercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxWidthPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->maxWidthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxHeightPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 773
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->maxHeightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minWidthPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->minWidthPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minHeightPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->minHeightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paddingLeftPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 774
    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingLeftPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paddingRightPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingRightPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paddingTopPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingTopPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 775
    const-string v1, ", paddingBottomPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->paddingBottomPercent:Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreservedParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
