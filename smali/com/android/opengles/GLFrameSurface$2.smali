.class Lcom/android/opengles/GLFrameSurface$2;
.super Ljava/lang/Object;
.source "GLFrameSurface.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/opengles/GLFrameSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/opengles/GLFrameSurface;


# direct methods
.method constructor <init>(Lcom/android/opengles/GLFrameSurface;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 437
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    .line 441
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-virtual {v8}, Lcom/android/opengles/GLFrameSurface;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 442
    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 441
    check-cast v7, Landroid/view/WindowManager;

    .line 443
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v5

    .line 444
    .local v5, "uiRot":I
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8}, Lcom/android/opengles/GLFrameSurface;->access$1(Lcom/android/opengles/GLFrameSurface;)I

    move-result v8

    if-eq v8, v5, :cond_0

    .line 446
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8, v10}, Lcom/android/opengles/GLFrameSurface;->access$2(Lcom/android/opengles/GLFrameSurface;F)V

    .line 447
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8}, Lcom/android/opengles/GLFrameSurface;->access$3(Lcom/android/opengles/GLFrameSurface;)[F

    move-result-object v8

    aput v10, v8, v11

    .line 448
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8}, Lcom/android/opengles/GLFrameSurface;->access$3(Lcom/android/opengles/GLFrameSurface;)[F

    move-result-object v8

    aput v10, v8, v12

    .line 449
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8}, Lcom/android/opengles/GLFrameSurface;->access$3(Lcom/android/opengles/GLFrameSurface;)[F

    move-result-object v8

    aput v10, v8, v13

    .line 450
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8, v5}, Lcom/android/opengles/GLFrameSurface;->access$4(Lcom/android/opengles/GLFrameSurface;I)V

    .line 452
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8, v10}, Lcom/android/opengles/GLFrameSurface;->access$5(Lcom/android/opengles/GLFrameSurface;F)V

    .line 453
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8, v10}, Lcom/android/opengles/GLFrameSurface;->access$6(Lcom/android/opengles/GLFrameSurface;F)V

    .line 456
    :cond_0
    const/4 v0, 0x0

    .local v0, "anglex":F
    const/4 v1, 0x0

    .local v1, "angley":F
    const/4 v2, 0x0

    .line 457
    .local v2, "anglez":F
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 459
    .local v6, "values":[F
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8}, Lcom/android/opengles/GLFrameSurface;->access$7(Lcom/android/opengles/GLFrameSurface;)F

    move-result v8

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_1

    .line 462
    iget-wide v8, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v8, v8

    iget-object v9, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v9}, Lcom/android/opengles/GLFrameSurface;->access$7(Lcom/android/opengles/GLFrameSurface;)F

    move-result v9

    sub-float/2addr v8, v9

    const v9, 0x3089705f    # 1.0E-9f

    mul-float v3, v8, v9

    .line 463
    .local v3, "dT":F
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8}, Lcom/android/opengles/GLFrameSurface;->access$3(Lcom/android/opengles/GLFrameSurface;)[F

    move-result-object v8

    aget v9, v8, v11

    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v11

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    aput v9, v8, v11

    .line 464
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8}, Lcom/android/opengles/GLFrameSurface;->access$3(Lcom/android/opengles/GLFrameSurface;)[F

    move-result-object v8

    aget v9, v8, v12

    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v12

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    aput v9, v8, v12

    .line 465
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8}, Lcom/android/opengles/GLFrameSurface;->access$3(Lcom/android/opengles/GLFrameSurface;)[F

    move-result-object v8

    aget v9, v8, v13

    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v13

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    aput v9, v8, v13

    .line 468
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8}, Lcom/android/opengles/GLFrameSurface;->access$3(Lcom/android/opengles/GLFrameSurface;)[F

    move-result-object v8

    aget v8, v8, v11

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 469
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8}, Lcom/android/opengles/GLFrameSurface;->access$3(Lcom/android/opengles/GLFrameSurface;)[F

    move-result-object v8

    aget v8, v8, v12

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v1, v8

    .line 470
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v8}, Lcom/android/opengles/GLFrameSurface;->access$3(Lcom/android/opengles/GLFrameSurface;)[F

    move-result-object v8

    aget v8, v8, v13

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v2, v8

    .line 473
    .end local v3    # "dT":F
    :cond_1
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    iget-wide v10, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v9, v10

    invoke-static {v8, v9}, Lcom/android/opengles/GLFrameSurface;->access$2(Lcom/android/opengles/GLFrameSurface;F)V

    .line 475
    if-ne v12, v5, :cond_3

    .line 477
    move v4, v0

    .line 478
    .local v4, "tmp":F
    neg-float v0, v1

    .line 479
    move v1, v4

    .line 493
    .end local v4    # "tmp":F
    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    iget-object v9, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v9}, Lcom/android/opengles/GLFrameSurface;->access$8(Lcom/android/opengles/GLFrameSurface;)F

    move-result v9

    iget-object v10, p0, Lcom/android/opengles/GLFrameSurface$2;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v10}, Lcom/android/opengles/GLFrameSurface;->access$9(Lcom/android/opengles/GLFrameSurface;)F

    move-result v10

    invoke-virtual {v8, v9, v10, v0, v1}, Lcom/android/opengles/GLFrameSurface;->update(FFFF)V

    .line 494
    return-void

    .line 481
    :cond_3
    if-ne v13, v5, :cond_4

    .line 483
    neg-float v0, v0

    .line 484
    neg-float v1, v1

    .line 485
    goto :goto_0

    .line 486
    :cond_4
    const/4 v8, 0x3

    if-ne v8, v5, :cond_2

    .line 488
    move v4, v0

    .line 489
    .restart local v4    # "tmp":F
    move v0, v1

    .line 490
    neg-float v1, v4

    goto :goto_0
.end method
