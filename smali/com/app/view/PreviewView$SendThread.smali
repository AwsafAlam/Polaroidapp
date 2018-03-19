.class Lcom/app/view/PreviewView$SendThread;
.super Ljava/lang/Thread;
.source "PreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendThread"
.end annotation


# instance fields
.field private isRun:Z

.field final synthetic this$0:Lcom/app/view/PreviewView;


# direct methods
.method public constructor <init>(Lcom/app/view/PreviewView;)V
    .locals 1

    .prologue
    .line 2684
    iput-object p1, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/app/view/PreviewView$SendThread;->isRun:Z

    .line 2686
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 2767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/view/PreviewView$SendThread;->isRun:Z

    .line 2768
    invoke-virtual {p0}, Lcom/app/view/PreviewView$SendThread;->interrupt()V

    .line 2769
    return-void
.end method

.method public getRun()Z
    .locals 1

    .prologue
    .line 2771
    iget-boolean v0, p0, Lcom/app/view/PreviewView$SendThread;->isRun:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x6

    const/16 v5, 0x9

    .line 2689
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/app/view/PreviewView$SendThread;->isRun:Z

    if-nez v2, :cond_1

    .line 2764
    return-void

    .line 2690
    :cond_1
    iget-object v2, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$97(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETLeftRocker;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$112(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETTrim;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$110(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETTrim;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2692
    const/4 v0, 0x0

    .line 2693
    .local v0, "ck":I
    const/16 v2, 0xb

    new-array v1, v2, [B

    .line 2694
    .local v1, "data":[B
    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 2695
    aput-byte v7, v1, v8

    .line 2696
    aget-byte v2, v1, v8

    add-int/2addr v0, v2

    .line 2697
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v3}, Lcom/app/view/PreviewView;->access$97(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETLeftRocker;

    move-result-object v3

    invoke-virtual {v3}, Let/song/ui/widgets/ETLeftRocker;->getYV()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 2698
    const/4 v2, 0x2

    aget-byte v2, v1, v2

    add-int/2addr v0, v2

    .line 2699
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v3}, Lcom/app/view/PreviewView;->access$97(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETLeftRocker;

    move-result-object v3

    invoke-virtual {v3}, Let/song/ui/widgets/ETLeftRocker;->getXV()F

    move-result v3

    float-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 2700
    const/4 v2, 0x3

    aget-byte v2, v1, v2

    add-int/2addr v0, v2

    .line 2702
    iget-object v2, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$113(Lcom/app/view/PreviewView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2704
    iget-object v2, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$108(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETPlaneRocker;

    move-result-object v2

    invoke-virtual {v2}, Let/song/ui/widgets/ETPlaneRocker;->getMaxY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v3}, Lcom/app/view/PreviewView;->access$108(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETPlaneRocker;

    move-result-object v3

    invoke-virtual {v3}, Let/song/ui/widgets/ETPlaneRocker;->getYV()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 2711
    :goto_1
    aget-byte v2, v1, v7

    add-int/2addr v0, v2

    .line 2713
    iget-object v2, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$113(Lcom/app/view/PreviewView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2715
    iget-object v2, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$108(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETPlaneRocker;

    move-result-object v2

    invoke-virtual {v2}, Let/song/ui/widgets/ETPlaneRocker;->getXV()F

    move-result v2

    float-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v9

    .line 2723
    :goto_2
    aget-byte v2, v1, v9

    add-int/2addr v0, v2

    .line 2724
    iget-object v2, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$112(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETTrim;

    move-result-object v2

    invoke-virtual {v2}, Let/song/ui/widgets/ETTrim;->getPos()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 2725
    iget-object v2, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$114(Lcom/app/view/PreviewView;)I

    move-result v2

    if-ne v2, v8, :cond_4

    .line 2727
    aget-byte v2, v1, v6

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 2734
    :goto_3
    aget-byte v2, v1, v6

    iget-object v3, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v3}, Lcom/app/view/PreviewView;->access$115(Lcom/app/view/PreviewView;)I

    move-result v3

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 2736
    aget-byte v2, v1, v6

    add-int/2addr v0, v2

    .line 2737
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v3}, Lcom/app/view/PreviewView;->access$109(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETTBTrim;

    move-result-object v3

    invoke-virtual {v3}, Let/song/ui/widgets/ETTBTrim;->getMax()I

    move-result v3

    iget-object v4, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v4}, Lcom/app/view/PreviewView;->access$109(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETTBTrim;

    move-result-object v4

    invoke-virtual {v4}, Let/song/ui/widgets/ETTBTrim;->getPos()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 2738
    const/4 v2, 0x7

    aget-byte v2, v1, v2

    add-int/2addr v0, v2

    .line 2739
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v3}, Lcom/app/view/PreviewView;->access$110(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETTrim;

    move-result-object v3

    invoke-virtual {v3}, Let/song/ui/widgets/ETTrim;->getPos()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 2740
    const/16 v2, 0x8

    aget-byte v2, v1, v2

    add-int/2addr v0, v2

    .line 2741
    iget-object v2, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$116(Lcom/app/view/PreviewView;)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 2742
    aget-byte v2, v1, v5

    iget-object v3, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v3}, Lcom/app/view/PreviewView;->access$117(Lcom/app/view/PreviewView;)I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 2743
    aget-byte v2, v1, v5

    iget-object v3, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v3}, Lcom/app/view/PreviewView;->access$118(Lcom/app/view/PreviewView;)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 2744
    aget-byte v2, v1, v5

    iget-object v3, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v3}, Lcom/app/view/PreviewView;->access$119(Lcom/app/view/PreviewView;)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 2745
    aget-byte v2, v1, v5

    iget-object v3, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v3}, Lcom/app/view/PreviewView;->access$120(Lcom/app/view/PreviewView;)I

    move-result v3

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 2746
    aget-byte v2, v1, v5

    iget-object v3, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v3}, Lcom/app/view/PreviewView;->access$121(Lcom/app/view/PreviewView;)I

    move-result v3

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 2747
    aget-byte v2, v1, v5

    add-int/2addr v0, v2

    .line 2748
    const/16 v2, 0xa

    int-to-byte v3, v0

    rsub-int v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 2753
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmacrochip/app/newpl1200/SysApp;->writeUDPCmd([B)V

    .line 2757
    const-wide/16 v2, 0x19

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2759
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 2708
    :cond_2
    iget-object v2, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v2

    invoke-virtual {v2}, Let/song/ui/widgets/ETRightRocker;->getMaxY()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v3}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v3

    invoke-virtual {v3}, Let/song/ui/widgets/ETRightRocker;->getYV()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    goto/16 :goto_1

    .line 2719
    :cond_3
    iget-object v2, p0, Lcom/app/view/PreviewView$SendThread;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v2

    invoke-virtual {v2}, Let/song/ui/widgets/ETRightRocker;->getXV()F

    move-result v2

    float-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v9

    goto/16 :goto_2

    .line 2731
    :cond_4
    aget-byte v2, v1, v6

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    goto/16 :goto_3
.end method
