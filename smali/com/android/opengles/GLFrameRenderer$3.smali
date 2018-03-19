.class Lcom/android/opengles/GLFrameRenderer$3;
.super Ljava/lang/Object;
.source "GLFrameRenderer.java"

# interfaces
.implements Lcom/fh/lib/Define$YUVDataCallBackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/opengles/GLFrameRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/opengles/GLFrameRenderer;


# direct methods
.method constructor <init>(Lcom/android/opengles/GLFrameRenderer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/opengles/GLFrameRenderer$3;->this$0:Lcom/android/opengles/GLFrameRenderer;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 564
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 565
    sget v2, Lcom/android/opengles/GLFrameRenderer;->mScreenWidth:I

    if-lez v2, :cond_0

    .line 567
    :cond_0
    iget-object v2, p0, Lcom/android/opengles/GLFrameRenderer$3;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v2}, Lcom/android/opengles/GLFrameRenderer;->access$5(Lcom/android/opengles/GLFrameRenderer;)I

    move-result v2

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/opengles/GLFrameRenderer$3;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v2}, Lcom/android/opengles/GLFrameRenderer;->access$6(Lcom/android/opengles/GLFrameRenderer;)I

    move-result v2

    if-eq p2, v2, :cond_1

    .line 568
    iget-object v2, p0, Lcom/android/opengles/GLFrameRenderer$3;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v2, p1}, Lcom/android/opengles/GLFrameRenderer;->access$7(Lcom/android/opengles/GLFrameRenderer;I)V

    .line 569
    iget-object v2, p0, Lcom/android/opengles/GLFrameRenderer$3;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v2, p2}, Lcom/android/opengles/GLFrameRenderer;->access$8(Lcom/android/opengles/GLFrameRenderer;I)V

    .line 570
    mul-int v1, p1, p2

    .line 571
    .local v1, "yarraySize":I
    div-int/lit8 v0, v1, 0x4

    .line 572
    .local v0, "uvarraySize":I
    monitor-enter p0

    .line 576
    :try_start_0
    iget-object v2, p0, Lcom/android/opengles/GLFrameRenderer$3;->this$0:Lcom/android/opengles/GLFrameRenderer;

    mul-int v3, p1, p2

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    invoke-static {v2, v3}, Lcom/android/opengles/GLFrameRenderer;->access$9(Lcom/android/opengles/GLFrameRenderer;[B)V

    .line 572
    monitor-exit p0

    .line 581
    .end local v0    # "uvarraySize":I
    .end local v1    # "yarraySize":I
    :cond_1
    return-void

    .line 572
    .restart local v0    # "uvarraySize":I
    .restart local v1    # "yarraySize":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public update([B)V
    .locals 3
    .param p1, "yuvdata"    # [B

    .prologue
    const/4 v2, 0x0

    .line 588
    iget-object v0, p0, Lcom/android/opengles/GLFrameRenderer$3;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v0}, Lcom/android/opengles/GLFrameRenderer;->access$10(Lcom/android/opengles/GLFrameRenderer;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/opengles/GLFrameRenderer$3;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v0}, Lcom/android/opengles/GLFrameRenderer;->access$10(Lcom/android/opengles/GLFrameRenderer;)[B

    move-result-object v0

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 591
    iget-object v0, p0, Lcom/android/opengles/GLFrameRenderer$3;->this$0:Lcom/android/opengles/GLFrameRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/opengles/GLFrameRenderer;->access$11(Lcom/android/opengles/GLFrameRenderer;Z)V

    .line 593
    :cond_0
    return-void
.end method

.method public update([B[B[B)V
    .locals 0
    .param p1, "ydata"    # [B
    .param p2, "udata"    # [B
    .param p3, "vdata"    # [B

    .prologue
    .line 543
    monitor-enter p0

    monitor-exit p0

    .line 556
    return-void
.end method
