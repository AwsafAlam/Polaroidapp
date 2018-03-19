.class Lcom/android/opengles/GLFrameRenderer$2;
.super Ljava/lang/Object;
.source "GLFrameRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/android/opengles/GLFrameRenderer$2;->this$0:Lcom/android/opengles/GLFrameRenderer;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v8, 0x3ba3d70a    # 0.005f

    const/4 v7, 0x6

    const/high16 v6, 0x42480000    # 50.0f

    const/4 v5, 0x0

    const/high16 v4, 0x447a0000    # 1000.0f

    .line 171
    sget v0, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-eq v7, v0, :cond_0

    .line 172
    const/4 v0, 0x0

    sput v0, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    .line 174
    :cond_0
    sget-boolean v0, Lcom/android/opengles/GLFrameRenderer;->isDoubleClick:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-nez v0, :cond_1

    sget v0, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-eqz v0, :cond_2

    :cond_1
    sget v0, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-ne v7, v0, :cond_3

    .line 176
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/opengles/GLFrameRenderer;->isDoubleClick:Z

    .line 178
    sget v0, Lcom/android/opengles/GLFrameRenderer;->depth:F

    sget v1, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v1}, Lcom/fh/lib/FHSDK;->getMaxZDepth(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d

    .line 180
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/opengles/GLFrameRenderer;->isZoomIn:Z

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/android/opengles/GLFrameRenderer$2;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v0}, Lcom/android/opengles/GLFrameRenderer;->access$0(Lcom/android/opengles/GLFrameRenderer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/opengles/GLFrameRenderer$2;->this$0:Lcom/android/opengles/GLFrameRenderer;

    iget-object v1, v1, Lcom/android/opengles/GLFrameRenderer;->scaleView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    :cond_3
    invoke-static {}, Lcom/android/opengles/GLFrameRenderer;->access$1()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_10

    .line 196
    invoke-static {}, Lcom/android/opengles/GLFrameRenderer;->access$1()F

    move-result v0

    sget v1, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/opengles/GLFrameRenderer;->access$2(F)V

    .line 197
    invoke-static {}, Lcom/android/opengles/GLFrameRenderer;->access$1()F

    move-result v0

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_4

    sget v0, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    div-float/2addr v0, v4

    cmpg-float v0, v0, v8

    if-gez v0, :cond_5

    .line 198
    :cond_4
    invoke-static {v5}, Lcom/android/opengles/GLFrameRenderer;->access$2(F)V

    .line 200
    :cond_5
    sget v0, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-eqz v0, :cond_6

    sget v0, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-ne v7, v0, :cond_f

    .line 202
    :cond_6
    sget v0, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    sget v1, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-ne v0, v1, :cond_e

    .line 204
    :cond_7
    sget v0, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    sget v1, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    div-float/2addr v1, v4

    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    sput v0, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    .line 240
    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/opengles/GLFrameRenderer;->access$3()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_18

    .line 242
    invoke-static {}, Lcom/android/opengles/GLFrameRenderer;->access$3()F

    move-result v0

    sget v1, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/opengles/GLFrameRenderer;->access$4(F)V

    .line 243
    invoke-static {}, Lcom/android/opengles/GLFrameRenderer;->access$3()F

    move-result v0

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_9

    sget v0, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    div-float/2addr v0, v4

    cmpg-float v0, v0, v8

    if-gez v0, :cond_a

    .line 244
    :cond_9
    invoke-static {v5}, Lcom/android/opengles/GLFrameRenderer;->access$4(F)V

    .line 246
    :cond_a
    sget v0, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-ne v7, v0, :cond_17

    .line 248
    sget v0, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    sget v1, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    div-float/2addr v1, v4

    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    sput v0, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    .line 274
    :cond_b
    :goto_2
    sget v0, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_c

    .line 275
    sget v0, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    sput v0, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    .line 282
    :cond_c
    iget-object v0, p0, Lcom/android/opengles/GLFrameRenderer$2;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v0}, Lcom/android/opengles/GLFrameRenderer;->access$0(Lcom/android/opengles/GLFrameRenderer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/opengles/GLFrameRenderer$2;->this$0:Lcom/android/opengles/GLFrameRenderer;

    iget-object v1, v1, Lcom/android/opengles/GLFrameRenderer;->requestRender:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    return-void

    .line 184
    :cond_d
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/opengles/GLFrameRenderer;->isZoomIn:Z

    goto/16 :goto_0

    .line 206
    :cond_e
    const/4 v0, 0x2

    sget v1, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-ne v0, v1, :cond_8

    .line 208
    sget-object v0, Lcom/android/opengles/GLFrameRenderer;->hEyeDegrees:[F

    sget v1, Lcom/android/opengles/GLFrameRenderer;->curIndex:I

    aget v2, v0, v1

    sget v3, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    aput v2, v0, v1

    goto :goto_1

    .line 212
    :cond_f
    sget v0, Lcom/android/opengles/GLFrameRenderer;->hOffset:F

    sget v1, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    sput v0, Lcom/android/opengles/GLFrameRenderer;->hOffset:F

    goto :goto_1

    .line 218
    :cond_10
    invoke-static {}, Lcom/android/opengles/GLFrameRenderer;->access$1()F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_8

    .line 220
    invoke-static {}, Lcom/android/opengles/GLFrameRenderer;->access$1()F

    move-result v0

    sget v1, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/opengles/GLFrameRenderer;->access$2(F)V

    .line 221
    invoke-static {}, Lcom/android/opengles/GLFrameRenderer;->access$1()F

    move-result v0

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_11

    sget v0, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    div-float/2addr v0, v4

    cmpg-float v0, v0, v8

    if-gez v0, :cond_12

    .line 222
    :cond_11
    invoke-static {v5}, Lcom/android/opengles/GLFrameRenderer;->access$2(F)V

    .line 224
    :cond_12
    sget v0, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-eqz v0, :cond_13

    sget v0, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-ne v7, v0, :cond_16

    .line 226
    :cond_13
    sget v0, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    sget v1, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-ne v0, v1, :cond_15

    .line 228
    :cond_14
    sget v0, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    sget v1, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    div-float/2addr v1, v4

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    sput v0, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    goto/16 :goto_1

    .line 230
    :cond_15
    const/4 v0, 0x2

    sget v1, Lcom/android/opengles/GLFrameRenderer;->eyeMode:I

    if-ne v0, v1, :cond_8

    .line 232
    sget-object v0, Lcom/android/opengles/GLFrameRenderer;->hEyeDegrees:[F

    sget v1, Lcom/android/opengles/GLFrameRenderer;->curIndex:I

    aget v2, v0, v1

    sget v3, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    aput v2, v0, v1

    goto/16 :goto_1

    .line 236
    :cond_16
    sget v0, Lcom/android/opengles/GLFrameRenderer;->hOffset:F

    sget v1, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    sput v0, Lcom/android/opengles/GLFrameRenderer;->hOffset:F

    goto/16 :goto_1

    .line 251
    :cond_17
    sget v0, Lcom/android/opengles/GLFrameRenderer;->hOffset:F

    sget v1, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    sput v0, Lcom/android/opengles/GLFrameRenderer;->hOffset:F

    goto/16 :goto_2

    .line 257
    :cond_18
    invoke-static {}, Lcom/android/opengles/GLFrameRenderer;->access$3()F

    move-result v0

    cmpg-float v0, v0, v5

    if-gez v0, :cond_b

    .line 259
    invoke-static {}, Lcom/android/opengles/GLFrameRenderer;->access$3()F

    move-result v0

    sget v1, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/opengles/GLFrameRenderer;->access$4(F)V

    .line 260
    invoke-static {}, Lcom/android/opengles/GLFrameRenderer;->access$3()F

    move-result v0

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_19

    sget v0, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    div-float/2addr v0, v4

    cmpg-float v0, v0, v8

    if-gez v0, :cond_1a

    .line 261
    :cond_19
    invoke-static {v5}, Lcom/android/opengles/GLFrameRenderer;->access$4(F)V

    .line 263
    :cond_1a
    sget v0, Lcom/android/opengles/GLFrameRenderer;->displayMode:I

    if-ne v7, v0, :cond_1b

    .line 265
    sget v0, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    sget v1, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    div-float/2addr v1, v4

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    sput v0, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    goto/16 :goto_2

    .line 268
    :cond_1b
    sget v0, Lcom/android/opengles/GLFrameRenderer;->hOffset:F

    sget v1, Lcom/android/opengles/GLFrameRenderer;->scrollStep:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    sput v0, Lcom/android/opengles/GLFrameRenderer;->hOffset:F

    goto/16 :goto_2
.end method
