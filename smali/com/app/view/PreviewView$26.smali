.class Lcom/app/view/PreviewView$26;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/view/PreviewView;


# direct methods
.method constructor <init>(Lcom/app/view/PreviewView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/view/PreviewView$26;->this$0:Lcom/app/view/PreviewView;

    .line 1525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1530
    sget v2, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 1533
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1534
    .local v1, "mode":I
    add-int/lit8 v1, v1, 0x1

    if-le v1, v6, :cond_0

    .line 1535
    const/4 v1, 0x0

    .line 1536
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1538
    sput v1, Lcom/android/opengles/GLFrameRenderer;->ctrlIndex:I

    .line 1539
    sput-boolean v4, Lcom/android/opengles/GLFrameRenderer;->bMixMode:Z

    .line 1540
    sget v2, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v2, v4}, Lcom/fh/lib/FHSDK;->setImagingType(II)Z

    .line 1541
    sget v2, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v2, v5, v5, v5}, Lcom/fh/lib/FHSDK;->setStandardCircle(IFFF)Z

    .line 1542
    sput v4, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    .line 1543
    sput v5, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    .line 1544
    sput v5, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    .line 1546
    packed-switch v1, :pswitch_data_0

    .line 1598
    .end local v1    # "mode":I
    :goto_0
    return-void

    .line 1549
    .restart local v1    # "mode":I
    :pswitch_0
    sput v4, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    .line 1550
    sget v2, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v2}, Lcom/fh/lib/FHSDK;->getMaxZDepth(I)F

    move-result v2

    sput v2, Lcom/android/opengles/GLFrameRenderer;->depth:F

    goto :goto_0

    .line 1553
    :pswitch_1
    sput v4, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    .line 1554
    sput v6, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    .line 1555
    sget v2, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v2}, Lcom/fh/lib/FHSDK;->getMaxVDegress(I)F

    move-result v2

    sput v2, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    goto :goto_0

    .line 1558
    :pswitch_2
    sput v6, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    goto :goto_0

    .line 1561
    :pswitch_3
    const/4 v2, 0x5

    sput v2, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    goto :goto_0

    .line 1574
    .end local v1    # "mode":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1575
    .local v0, "is3D":I
    if-nez v0, :cond_3

    .line 1577
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1579
    sget v2, Lcom/fh/lib/PlayInfo;->decodeType:I

    if-ne v2, v8, :cond_2

    .line 1581
    invoke-static {v7}, Lcom/fh/lib/FHSDK;->set3DMode(Z)V

    .line 1585
    :goto_1
    const v2, 0x7f020012

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1584
    :cond_2
    invoke-static {}, Lcom/app/Interface/MyMediaCodec;->getInstance()Lcom/app/Interface/MyMediaCodec;

    move-result-object v2

    sget v3, Lcom/app/Interface/MyMediaCodec;->SHOW_MODE_3D:I

    invoke-virtual {v2, v3}, Lcom/app/Interface/MyMediaCodec;->setShowMode(I)V

    goto :goto_1

    .line 1589
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1590
    sget v2, Lcom/fh/lib/PlayInfo;->decodeType:I

    if-ne v2, v8, :cond_4

    .line 1592
    invoke-static {v4}, Lcom/fh/lib/FHSDK;->set3DMode(Z)V

    .line 1596
    :goto_2
    const v2, 0x7f020011

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1595
    :cond_4
    invoke-static {}, Lcom/app/Interface/MyMediaCodec;->getInstance()Lcom/app/Interface/MyMediaCodec;

    move-result-object v2

    sget v3, Lcom/app/Interface/MyMediaCodec;->SHOW_MODE_FULLSCREEN:I

    invoke-virtual {v2, v3}, Lcom/app/Interface/MyMediaCodec;->setShowMode(I)V

    goto :goto_2

    .line 1546
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
