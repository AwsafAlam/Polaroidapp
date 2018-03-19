.class Lcom/android/opengles/GLFrameRenderer$1;
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
    iput-object p1, p0, Lcom/android/opengles/GLFrameRenderer$1;->this$0:Lcom/android/opengles/GLFrameRenderer;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/high16 v6, 0x42480000    # 50.0f

    const/4 v7, 0x0

    .line 130
    const/high16 v3, 0x42480000    # 50.0f

    .line 131
    .local v3, "totalTime":F
    sget v5, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v5}, Lcom/fh/lib/FHSDK;->getMaxVDegress(I)F

    move-result v5

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 132
    .local v4, "vDegreesStep":F
    sget v5, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v5}, Lcom/fh/lib/FHSDK;->getMaxZDepth(I)F

    move-result v5

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 133
    .local v0, "depthStep":F
    const v1, 0x3fe66666    # 1.8f

    .line 135
    .local v1, "hDegreesStep":F
    sget-boolean v5, Lcom/android/opengles/GLFrameRenderer;->isZoomIn:Z

    if-eqz v5, :cond_5

    .line 137
    sget v5, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    sub-float/2addr v5, v4

    sput v5, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    .line 138
    sget v5, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    add-float/2addr v5, v1

    sput v5, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    .line 139
    sget v5, Lcom/android/opengles/GLFrameRenderer;->depth:F

    add-float/2addr v5, v0

    sput v5, Lcom/android/opengles/GLFrameRenderer;->depth:F

    .line 149
    :goto_0
    sget v5, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->getMaxVDegress(I)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 150
    sget v5, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v5}, Lcom/fh/lib/FHSDK;->getMaxVDegress(I)F

    move-result v5

    sput v5, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    .line 154
    :cond_0
    :goto_1
    sget v5, Lcom/android/opengles/GLFrameRenderer;->depth:F

    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->getMaxZDepth(I)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    .line 155
    sget v5, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v5}, Lcom/fh/lib/FHSDK;->getMaxZDepth(I)F

    move-result v5

    sput v5, Lcom/android/opengles/GLFrameRenderer;->depth:F

    .line 160
    :cond_1
    :goto_2
    sget-boolean v5, Lcom/android/opengles/GLFrameRenderer;->isZoomIn:Z

    if-eqz v5, :cond_2

    sget v5, Lcom/android/opengles/GLFrameRenderer;->depth:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_3

    :cond_2
    sget-boolean v5, Lcom/android/opengles/GLFrameRenderer;->isZoomIn:Z

    if-nez v5, :cond_4

    sget v5, Lcom/android/opengles/GLFrameRenderer;->depth:F

    sget v6, Lcom/android/opengles/GLFrameRenderer;->hWin:I

    invoke-static {v6}, Lcom/fh/lib/FHSDK;->getMaxZDepth(I)F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_4

    .line 161
    :cond_3
    iget-object v5, p0, Lcom/android/opengles/GLFrameRenderer$1;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-static {v5}, Lcom/android/opengles/GLFrameRenderer;->access$0(Lcom/android/opengles/GLFrameRenderer;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/opengles/GLFrameRenderer$1;->this$0:Lcom/android/opengles/GLFrameRenderer;

    iget-object v6, v6, Lcom/android/opengles/GLFrameRenderer;->scaleView:Ljava/lang/Runnable;

    const-wide/16 v8, 0x28

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    :cond_4
    return-void

    .line 143
    :cond_5
    const/high16 v2, 0x40800000    # 4.0f

    .line 144
    .local v2, "speed":F
    sget v5, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    mul-float v6, v4, v2

    add-float/2addr v5, v6

    sput v5, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    .line 145
    sget v5, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    mul-float v6, v1, v2

    sub-float/2addr v5, v6

    sput v5, Lcom/android/opengles/GLFrameRenderer;->hDegrees:F

    .line 146
    sget v5, Lcom/android/opengles/GLFrameRenderer;->depth:F

    mul-float v6, v0, v2

    sub-float/2addr v5, v6

    sput v5, Lcom/android/opengles/GLFrameRenderer;->depth:F

    goto :goto_0

    .line 151
    .end local v2    # "speed":F
    :cond_6
    sget v5, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_0

    .line 152
    sput v7, Lcom/android/opengles/GLFrameRenderer;->vDegrees:F

    goto :goto_1

    .line 156
    :cond_7
    sget v5, Lcom/android/opengles/GLFrameRenderer;->depth:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1

    .line 157
    sput v7, Lcom/android/opengles/GLFrameRenderer;->depth:F

    goto :goto_2
.end method
