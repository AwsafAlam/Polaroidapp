.class Lcom/fh/lib/SDLSurface;
.super Landroid/view/SurfaceView;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field protected static mDisplay:Landroid/view/Display;

.field protected static mHeight:F

.field protected static mSensorManager:Landroid/hardware/SensorManager;

.field protected static mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 563
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 564
    invoke-virtual {p0}, Lcom/fh/lib/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 566
    invoke-virtual {p0, v1}, Lcom/fh/lib/SDLSurface;->setFocusable(Z)V

    .line 567
    invoke-virtual {p0, v1}, Lcom/fh/lib/SDLSurface;->setFocusableInTouchMode(Z)V

    .line 568
    invoke-virtual {p0}, Lcom/fh/lib/SDLSurface;->requestFocus()Z

    .line 572
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sput-object v0, Lcom/fh/lib/SDLSurface;->mDisplay:Landroid/view/Display;

    .line 573
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/fh/lib/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 575
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 576
    new-instance v0, Lcom/fh/lib/SDLGenericMotionListener_API12;

    invoke-direct {v0}, Lcom/fh/lib/SDLGenericMotionListener_API12;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fh/lib/SDLSurface;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 580
    :cond_0
    sput v2, Lcom/fh/lib/SDLSurface;->mWidth:F

    .line 581
    sput v2, Lcom/fh/lib/SDLSurface;->mHeight:F

    .line 582
    return-void
.end method


# virtual methods
.method public enableSensor(IZ)V
    .locals 4
    .param p1, "sensortype"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 784
    if-eqz p2, :cond_0

    .line 785
    sget-object v0, Lcom/fh/lib/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 786
    sget-object v1, Lcom/fh/lib/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 787
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 785
    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 792
    :goto_0
    return-void

    .line 789
    :cond_0
    sget-object v0, Lcom/fh/lib/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    .line 790
    sget-object v1, Lcom/fh/lib/SDLSurface;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 789
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method public getNativeSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/fh/lib/SDLSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 797
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 695
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 705
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, 0x401

    if-nez v1, :cond_0

    .line 706
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, 0x201

    if-eqz v1, :cond_3

    .line 707
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 708
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1, p2}, Lcom/fh/lib/SDLActivity;->onNativePadDown(II)I

    move-result v1

    if-nez v1, :cond_3

    .line 731
    :cond_1
    :goto_0
    return v0

    .line 711
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 712
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1, p2}, Lcom/fh/lib/SDLActivity;->onNativePadUp(II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 718
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, 0x101

    if-eqz v1, :cond_5

    .line 719
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    .line 721
    invoke-static {p2}, Lcom/fh/lib/SDLActivity;->onNativeKeyDown(I)V

    goto :goto_0

    .line 724
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 726
    invoke-static {p2}, Lcom/fh/lib/SDLActivity;->onNativeKeyUp(I)V

    goto :goto_0

    .line 731
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const v6, 0x411ce80a

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 801
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 803
    sget-object v2, Lcom/fh/lib/SDLSurface;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 817
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v4

    .line 818
    .local v0, "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v3

    .line 821
    .local v1, "y":F
    :goto_0
    neg-float v2, v0

    div-float/2addr v2, v6

    .line 822
    div-float v3, v1, v6

    .line 823
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    div-float/2addr v4, v6

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    .line 821
    invoke-static {v2, v3, v4}, Lcom/fh/lib/SDLActivity;->onNativeAccel(FFF)V

    .line 825
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    return-void

    .line 805
    :pswitch_0
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    neg-float v0, v2

    .line 806
    .restart local v0    # "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v4

    .line 807
    .restart local v1    # "y":F
    goto :goto_0

    .line 809
    .end local v0    # "x":F
    .end local v1    # "y":F
    :pswitch_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v3

    .line 810
    .restart local v0    # "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    neg-float v1, v2

    .line 811
    .restart local v1    # "y":F
    goto :goto_0

    .line 813
    .end local v0    # "x":F
    .end local v1    # "y":F
    :pswitch_2
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    neg-float v0, v2

    .line 814
    .restart local v0    # "x":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    neg-float v1, v2

    .line 815
    .restart local v1    # "y":F
    goto :goto_0

    .line 803
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 738
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    .line 739
    .local v0, "touchDevId":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 740
    .local v7, "pointerCount":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 742
    .local v2, "action":I
    const/4 v6, -0x1

    .line 745
    .local v6, "i":I
    packed-switch v2, :pswitch_data_0

    .line 778
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v8, 0x1

    return v8

    .line 747
    :pswitch_1
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    .line 748
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 749
    .local v1, "pointerFingerId":I
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    sget v9, Lcom/fh/lib/SDLSurface;->mWidth:F

    div-float v3, v8, v9

    .line 750
    .local v3, "x":F
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sget v9, Lcom/fh/lib/SDLSurface;->mHeight:F

    div-float v4, v8, v9

    .line 751
    .local v4, "y":F
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v5

    .line 752
    .local v5, "p":F
    invoke-static/range {v0 .. v5}, Lcom/fh/lib/SDLActivity;->onNativeTouch(IIIFFF)V

    .line 747
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 759
    .end local v1    # "pointerFingerId":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "p":F
    :pswitch_2
    const/4 v6, 0x0

    .line 763
    :pswitch_3
    const/4 v8, -0x1

    if-ne v6, v8, :cond_1

    .line 764
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 767
    :cond_1
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 768
    .restart local v1    # "pointerFingerId":I
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    sget v9, Lcom/fh/lib/SDLSurface;->mWidth:F

    div-float v3, v8, v9

    .line 769
    .restart local v3    # "x":F
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sget v9, Lcom/fh/lib/SDLSurface;->mHeight:F

    div-float v4, v8, v9

    .line 770
    .restart local v4    # "y":F
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v5

    .line 771
    .restart local v5    # "p":F
    invoke-static/range {v0 .. v5}, Lcom/fh/lib/SDLActivity;->onNativeTouch(IIIFFF)V

    goto :goto_0

    .line 745
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v4, 0x1

    .line 609
    const-string v1, "SDL"

    const-string v2, "surfaceChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const v0, 0x15151002

    .line 612
    .local v0, "sdlFormat":I
    packed-switch p2, :pswitch_data_0

    .line 652
    :pswitch_0
    const-string v1, "SDL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pixel format unknown "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_0
    int-to-float v1, p3

    sput v1, Lcom/fh/lib/SDLSurface;->mWidth:F

    .line 657
    int-to-float v1, p4

    sput v1, Lcom/fh/lib/SDLSurface;->mHeight:F

    .line 658
    invoke-static {p3, p4, v0}, Lcom/fh/lib/SDLActivity;->onNativeResize(III)V

    .line 659
    const-string v1, "SDL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Window size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    sput-boolean v4, Lcom/fh/lib/SDLActivity;->mIsSurfaceReady:Z

    .line 663
    invoke-static {}, Lcom/fh/lib/SDLActivity;->onNativeSurfaceChanged()V

    .line 666
    sget-object v1, Lcom/fh/lib/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 670
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/fh/lib/SDLMain;

    invoke-direct {v2}, Lcom/fh/lib/SDLMain;-><init>()V

    const-string v3, "SDLThread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lcom/fh/lib/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    .line 671
    invoke-virtual {p0, v4, v4}, Lcom/fh/lib/SDLSurface;->enableSensor(IZ)V

    .line 672
    sget-object v1, Lcom/fh/lib/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 675
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/fh/lib/SDLSurface$1;

    invoke-direct {v2, p0}, Lcom/fh/lib/SDLSurface$1;-><init>(Lcom/fh/lib/SDLSurface;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 689
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 691
    :cond_0
    return-void

    .line 614
    :pswitch_1
    const-string v1, "SDL"

    const-string v2, "pixel format A_8"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 617
    :pswitch_2
    const-string v1, "SDL"

    const-string v2, "pixel format LA_88"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 620
    :pswitch_3
    const-string v1, "SDL"

    const-string v2, "pixel format L_8"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 623
    :pswitch_4
    const-string v1, "SDL"

    const-string v2, "pixel format RGBA_4444"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const v0, 0x15421002

    .line 625
    goto :goto_0

    .line 627
    :pswitch_5
    const-string v1, "SDL"

    const-string v2, "pixel format RGBA_5551"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const v0, 0x15441002

    .line 629
    goto/16 :goto_0

    .line 631
    :pswitch_6
    const-string v1, "SDL"

    const-string v2, "pixel format RGBA_8888"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const v0, 0x16462004

    .line 633
    goto/16 :goto_0

    .line 635
    :pswitch_7
    const-string v1, "SDL"

    const-string v2, "pixel format RGBX_8888"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const v0, 0x16261804

    .line 637
    goto/16 :goto_0

    .line 639
    :pswitch_8
    const-string v1, "SDL"

    const-string v2, "pixel format RGB_332"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const v0, 0x14110801

    .line 641
    goto/16 :goto_0

    .line 643
    :pswitch_9
    const-string v1, "SDL"

    const-string v2, "pixel format RGB_565"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const v0, 0x15151002

    .line 645
    goto/16 :goto_0

    .line 647
    :pswitch_a
    const-string v1, "SDL"

    const-string v2, "pixel format RGB_888"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const v0, 0x16161804

    .line 650
    goto/16 :goto_0

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 591
    const-string v0, "SDL"

    const-string v1, "surfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 593
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 598
    const-string v0, "SDL"

    const-string v1, "surfaceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-static {}, Lcom/fh/lib/SDLActivity;->handlePause()V

    .line 601
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fh/lib/SDLActivity;->mIsSurfaceReady:Z

    .line 602
    invoke-static {}, Lcom/fh/lib/SDLActivity;->onNativeSurfaceDestroyed()V

    .line 603
    return-void
.end method
