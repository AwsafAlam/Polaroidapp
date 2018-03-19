.class Lcom/app/view/PreviewView$31;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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
    iput-object p1, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    .line 1840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1875
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v7, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/high16 v8, 0x41100000    # 9.0f

    .line 1844
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-nez v5, :cond_1

    .line 1869
    :cond_0
    :goto_0
    return-void

    .line 1847
    :cond_1
    const/4 v2, 0x0

    .local v2, "x":F
    const/4 v3, 0x0

    .local v3, "y":F
    const/4 v4, 0x0

    .line 1848
    .local v4, "z":F
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$65(Lcom/app/view/PreviewView;)I

    move-result v5

    if-ne v5, v6, :cond_0

    .line 1849
    iget-object v5, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$71(Lcom/app/view/PreviewView;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1850
    iget-object v5, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5, v7}, Lcom/app/view/PreviewView;->access$67(Lcom/app/view/PreviewView;Z)V

    .line 1854
    :cond_2
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v5, v7

    .line 1855
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v5, v6

    .line 1856
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v4, v5, v6

    .line 1857
    iget-object v5, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$72(Lcom/app/view/PreviewView;)F

    move-result v5

    sub-float v0, v2, v5

    .line 1858
    .local v0, "offsetX":F
    iget-object v5, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$73(Lcom/app/view/PreviewView;)F

    move-result v5

    sub-float v1, v3, v5

    .line 1862
    .local v1, "offsetY":F
    iget-object v5, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    add-float v6, v1, v8

    iget-object v7, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v7}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v7

    invoke-virtual {v7}, Let/song/ui/widgets/ETRightRocker;->getMaxX()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    mul-float/2addr v6, v9

    div-float/2addr v6, v8

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/app/view/PreviewView;->access$74(Lcom/app/view/PreviewView;F)V

    .line 1863
    iget-object v5, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    neg-float v6, v0

    add-float/2addr v6, v8

    iget-object v7, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v7}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v7

    invoke-virtual {v7}, Let/song/ui/widgets/ETRightRocker;->getMaxY()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/app/view/PreviewView;->access$75(Lcom/app/view/PreviewView;F)V

    .line 1865
    iget-object v5, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v5

    iget-object v6, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$76(Lcom/app/view/PreviewView;)F

    move-result v6

    div-float/2addr v6, v9

    iget-object v7, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v7}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v7

    invoke-virtual {v7}, Let/song/ui/widgets/ETRightRocker;->getMaxX()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Let/song/ui/widgets/ETRightRocker;->setXV(I)V

    .line 1866
    iget-object v5, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v5

    iget-object v6, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$77(Lcom/app/view/PreviewView;)F

    move-result v6

    iget-object v7, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v7}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v7

    invoke-virtual {v7}, Let/song/ui/widgets/ETRightRocker;->getMaxX()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Let/song/ui/widgets/ETRightRocker;->setYV(I)V

    .line 1867
    iget-object v5, p0, Lcom/app/view/PreviewView$31;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$70(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETRightRocker;

    move-result-object v5

    invoke-virtual {v5}, Let/song/ui/widgets/ETRightRocker;->Refresh()V

    goto/16 :goto_0
.end method
