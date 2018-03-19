.class Lcom/fh/lib/SDLJoystickHandler_API12;
.super Lcom/fh/lib/SDLJoystickHandler;
.source "SDLActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fh/lib/SDLJoystickHandler_API12$RangeComparator;,
        Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
    }
.end annotation


# instance fields
.field private mJoysticks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 988
    invoke-direct {p0}, Lcom/fh/lib/SDLJoystickHandler;-><init>()V

    .line 990
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    .line 991
    return-void
.end method


# virtual methods
.method protected getJoystick(I)Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
    .locals 2
    .param p1, "device_id"    # I

    .prologue
    .line 1059
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1064
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 1060
    :cond_0
    iget-object v1, p0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;

    iget v1, v1, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    if-ne v1, p1, :cond_1

    .line 1061
    iget-object v1, p0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;

    goto :goto_1

    .line 1059
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1069
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    const v9, 0x1000010

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    .line 1070
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1071
    .local v1, "actionPointerIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1072
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1093
    .end local v0    # "action":I
    .end local v1    # "actionPointerIndex":I
    :cond_0
    const/4 v8, 0x1

    return v8

    .line 1074
    .restart local v0    # "action":I
    .restart local v1    # "actionPointerIndex":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/fh/lib/SDLJoystickHandler_API12;->getJoystick(I)Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;

    move-result-object v5

    .line 1075
    .local v5, "joystick":Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
    if-eqz v5, :cond_0

    .line 1076
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v8, v5, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v4, v8, :cond_1

    .line 1082
    const/4 v4, 0x0

    :goto_1
    iget-object v8, v5, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 1083
    iget-object v8, v5, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v8

    invoke-virtual {p1, v8, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1084
    .local v2, "hatX":I
    iget-object v8, v5, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/InputDevice$MotionRange;

    invoke-virtual {v8}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v8

    invoke-virtual {p1, v8, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1085
    .local v3, "hatY":I
    iget v8, v5, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    div-int/lit8 v9, v4, 0x2

    invoke-static {v8, v9, v2, v3}, Lcom/fh/lib/SDLActivity;->onNativeHat(IIII)V

    .line 1082
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 1077
    .end local v2    # "hatX":I
    .end local v3    # "hatY":I
    :cond_1
    iget-object v8, v5, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/InputDevice$MotionRange;

    .line 1079
    .local v6, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v8

    invoke-virtual {p1, v8, v1}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getMin()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v9

    div-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v7, v8, v9

    .line 1080
    .local v7, "value":F
    iget v8, v5, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    invoke-static {v8, v4, v7}, Lcom/fh/lib/SDLActivity;->onNativeJoy(IIF)V

    .line 1076
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1072
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public pollInputDevices()V
    .locals 17

    .prologue
    .line 995
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v8

    .line 1001
    .local v8, "deviceIds":[I
    array-length v1, v8

    add-int/lit8 v10, v1, -0x1

    .local v10, "i":I
    :goto_0
    const/4 v1, -0x1

    if-gt v10, v1, :cond_0

    .line 1034
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1035
    .local v16, "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v10, v1, :cond_6

    .line 1046
    const/4 v10, 0x0

    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v10, v1, :cond_a

    .line 1056
    return-void

    .line 1002
    .end local v16    # "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    aget v1, v8, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/fh/lib/SDLJoystickHandler_API12;->getJoystick(I)Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;

    move-result-object v12

    .line 1003
    .local v12, "joystick":Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
    if-nez v12, :cond_2

    .line 1004
    new-instance v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;

    .end local v12    # "joystick":Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;-><init>(Lcom/fh/lib/SDLJoystickHandler_API12;)V

    .line 1005
    .restart local v12    # "joystick":Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
    aget v1, v8, v10

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v13

    .line 1006
    .local v13, "joystickDevice":Landroid/view/InputDevice;
    invoke-virtual {v13}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    .line 1007
    aget v1, v8, v10

    iput v1, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    .line 1008
    invoke-virtual {v13}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->name:Ljava/lang/String;

    .line 1009
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    .line 1010
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    .line 1012
    invoke-virtual {v13}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v15

    .line 1013
    .local v15, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    new-instance v1, Lcom/fh/lib/SDLJoystickHandler_API12$RangeComparator;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/fh/lib/SDLJoystickHandler_API12$RangeComparator;-><init>(Lcom/fh/lib/SDLJoystickHandler_API12;)V

    invoke-static {v15, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1014
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1026
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    iget v1, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    iget-object v2, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->name:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1028
    iget-object v5, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    .line 1027
    invoke-static/range {v1 .. v7}, Lcom/fh/lib/SDLActivity;->nativeAddJoystick(ILjava/lang/String;IIIII)I

    .line 1001
    .end local v13    # "joystickDevice":Landroid/view/InputDevice;
    .end local v15    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_0

    .line 1014
    .restart local v13    # "joystickDevice":Landroid/view/InputDevice;
    .restart local v15    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/InputDevice$MotionRange;

    .line 1015
    .local v14, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v14}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 1016
    invoke-virtual {v14}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_4

    .line 1017
    invoke-virtual {v14}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 1018
    :cond_4
    iget-object v2, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->hats:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1021
    :cond_5
    iget-object v2, v12, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->axes:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1036
    .end local v12    # "joystick":Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;
    .end local v13    # "joystickDevice":Landroid/view/InputDevice;
    .end local v14    # "range":Landroid/view/InputDevice$MotionRange;
    .end local v15    # "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    .restart local v16    # "removedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;

    iget v9, v1, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    .line 1038
    .local v9, "device_id":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    array-length v1, v8

    if-lt v11, v1, :cond_9

    .line 1041
    :cond_7
    array-length v1, v8

    if-ne v11, v1, :cond_8

    .line 1042
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1039
    :cond_9
    aget v1, v8, v11

    if-eq v9, v1, :cond_7

    .line 1038
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1047
    .end local v9    # "device_id":I
    .end local v11    # "j":I
    :cond_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1048
    .restart local v9    # "device_id":I
    invoke-static {v9}, Lcom/fh/lib/SDLActivity;->nativeRemoveJoystick(I)I

    .line 1049
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v11, v1, :cond_b

    .line 1046
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1050
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;

    iget v1, v1, Lcom/fh/lib/SDLJoystickHandler_API12$SDLJoystick;->device_id:I

    if-ne v1, v9, :cond_c

    .line 1051
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fh/lib/SDLJoystickHandler_API12;->mJoysticks:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 1049
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_5
.end method
