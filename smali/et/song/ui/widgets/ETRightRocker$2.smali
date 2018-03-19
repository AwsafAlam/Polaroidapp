.class Let/song/ui/widgets/ETRightRocker$2;
.super Ljava/lang/Object;
.source "ETRightRocker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Let/song/ui/widgets/ETRightRocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Let/song/ui/widgets/ETRightRocker;


# direct methods
.method constructor <init>(Let/song/ui/widgets/ETRightRocker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/high16 v14, 0x42300000    # 44.0f

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 284
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6}, Let/song/ui/widgets/ETRightRocker;->access$5(Let/song/ui/widgets/ETRightRocker;)I

    move-result v6

    if-eq v6, v10, :cond_0

    .line 286
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    iget-object v6, v6, Let/song/ui/widgets/ETRightRocker;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 289
    :cond_0
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    iget-object v6, v6, Let/song/ui/widgets/ETRightRocker;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 291
    const-string v6, "empty"

    invoke-static {v6}, Lcom/app/util/log;->e(Ljava/lang/String;)V

    .line 293
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6, v11}, Let/song/ui/widgets/ETRightRocker;->access$2(Let/song/ui/widgets/ETRightRocker;I)V

    .line 295
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6, v11}, Let/song/ui/widgets/ETRightRocker;->access$6(Let/song/ui/widgets/ETRightRocker;I)V

    .line 296
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 297
    .local v2, "msg":Landroid/os/Message;
    const/4 v6, 0x3

    iput v6, v2, Landroid/os/Message;->what:I

    .line 298
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6}, Let/song/ui/widgets/ETRightRocker;->access$7(Let/song/ui/widgets/ETRightRocker;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 338
    :goto_0
    return-void

    .line 306
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    iget-object v6, v6, Let/song/ui/widgets/ETRightRocker;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Let/song/ui/widgets/ETRightRocker$trackPoint;

    .line 307
    .local v3, "q":Let/song/ui/widgets/ETRightRocker$trackPoint;
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6}, Let/song/ui/widgets/ETRightRocker;->access$8(Let/song/ui/widgets/ETRightRocker;)I

    move-result v6

    if-nez v6, :cond_4

    .line 309
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6, v3}, Let/song/ui/widgets/ETRightRocker;->access$9(Let/song/ui/widgets/ETRightRocker;Let/song/ui/widgets/ETRightRocker$trackPoint;)V

    .line 326
    :cond_2
    :goto_1
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6}, Let/song/ui/widgets/ETRightRocker;->access$8(Let/song/ui/widgets/ETRightRocker;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Let/song/ui/widgets/ETRightRocker;->access$6(Let/song/ui/widgets/ETRightRocker;I)V

    if-le v7, v10, :cond_3

    .line 328
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6, v11}, Let/song/ui/widgets/ETRightRocker;->access$6(Let/song/ui/widgets/ETRightRocker;I)V

    .line 331
    :cond_3
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 332
    .restart local v2    # "msg":Landroid/os/Message;
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    iput v10, v2, Landroid/os/Message;->what:I

    .line 334
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6}, Let/song/ui/widgets/ETRightRocker;->access$7(Let/song/ui/widgets/ETRightRocker;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6}, Let/song/ui/widgets/ETRightRocker;->access$7(Let/song/ui/widgets/ETRightRocker;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    iget-object v7, v7, Let/song/ui/widgets/ETRightRocker;->updatePlanePos:Ljava/lang/Runnable;

    const-wide/16 v8, 0x28

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 312
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6}, Let/song/ui/widgets/ETRightRocker;->access$8(Let/song/ui/widgets/ETRightRocker;)I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 314
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6, v3}, Let/song/ui/widgets/ETRightRocker;->access$10(Let/song/ui/widgets/ETRightRocker;Let/song/ui/widgets/ETRightRocker$trackPoint;)V

    .line 315
    const/16 v0, 0x2c

    .line 319
    .local v0, "XYValue":I
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6}, Let/song/ui/widgets/ETRightRocker;->access$11(Let/song/ui/widgets/ETRightRocker;)Let/song/ui/widgets/ETRightRocker$trackPoint;

    move-result-object v6

    iget v6, v6, Let/song/ui/widgets/ETRightRocker$trackPoint;->x:F

    iget-object v7, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v7}, Let/song/ui/widgets/ETRightRocker;->access$12(Let/song/ui/widgets/ETRightRocker;)Let/song/ui/widgets/ETRightRocker$trackPoint;

    move-result-object v7

    iget v7, v7, Let/song/ui/widgets/ETRightRocker$trackPoint;->x:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget-object v8, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v8}, Let/song/ui/widgets/ETRightRocker;->access$11(Let/song/ui/widgets/ETRightRocker;)Let/song/ui/widgets/ETRightRocker$trackPoint;

    move-result-object v8

    iget v8, v8, Let/song/ui/widgets/ETRightRocker$trackPoint;->y:F

    iget-object v9, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v9}, Let/song/ui/widgets/ETRightRocker;->access$12(Let/song/ui/widgets/ETRightRocker;)Let/song/ui/widgets/ETRightRocker$trackPoint;

    move-result-object v9

    iget v9, v9, Let/song/ui/widgets/ETRightRocker$trackPoint;->y:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 320
    .local v5, "xie":F
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6}, Let/song/ui/widgets/ETRightRocker;->access$12(Let/song/ui/widgets/ETRightRocker;)Let/song/ui/widgets/ETRightRocker$trackPoint;

    move-result-object v6

    iget v6, v6, Let/song/ui/widgets/ETRightRocker$trackPoint;->y:F

    iget-object v7, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v7}, Let/song/ui/widgets/ETRightRocker;->access$11(Let/song/ui/widgets/ETRightRocker;)Let/song/ui/widgets/ETRightRocker$trackPoint;

    move-result-object v7

    iget v7, v7, Let/song/ui/widgets/ETRightRocker$trackPoint;->y:F

    sub-float/2addr v6, v7

    div-float v4, v6, v5

    .line 321
    .local v4, "sinAngle":F
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6}, Let/song/ui/widgets/ETRightRocker;->access$11(Let/song/ui/widgets/ETRightRocker;)Let/song/ui/widgets/ETRightRocker$trackPoint;

    move-result-object v6

    iget v6, v6, Let/song/ui/widgets/ETRightRocker$trackPoint;->x:F

    iget-object v7, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v7}, Let/song/ui/widgets/ETRightRocker;->access$12(Let/song/ui/widgets/ETRightRocker;)Let/song/ui/widgets/ETRightRocker$trackPoint;

    move-result-object v7

    iget v7, v7, Let/song/ui/widgets/ETRightRocker$trackPoint;->x:F

    sub-float/2addr v6, v7

    div-float v1, v6, v5

    .line 323
    .local v1, "cosAngle":F
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6}, Let/song/ui/widgets/ETRightRocker;->access$3(Let/song/ui/widgets/ETRightRocker;)[I

    move-result-object v6

    mul-float v7, v1, v14

    float-to-int v7, v7

    aput v7, v6, v11

    .line 324
    iget-object v6, p0, Let/song/ui/widgets/ETRightRocker$2;->this$0:Let/song/ui/widgets/ETRightRocker;

    invoke-static {v6}, Let/song/ui/widgets/ETRightRocker;->access$3(Let/song/ui/widgets/ETRightRocker;)[I

    move-result-object v6

    mul-float v7, v4, v14

    float-to-int v7, v7

    aput v7, v6, v10

    goto/16 :goto_1
.end method
