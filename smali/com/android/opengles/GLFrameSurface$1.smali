.class Lcom/android/opengles/GLFrameSurface$1;
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
    iput-object p1, p0, Lcom/android/opengles/GLFrameSurface$1;->this$0:Lcom/android/opengles/GLFrameSurface;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 87
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 78
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/opengles/GLFrameSurface$1;->this$0:Lcom/android/opengles/GLFrameSurface;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v1, v0, Lcom/android/opengles/GLFrameSurface;->magneticFieldValues:[F

    .line 81
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/opengles/GLFrameSurface$1;->this$0:Lcom/android/opengles/GLFrameSurface;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    iput-object v1, v0, Lcom/android/opengles/GLFrameSurface;->accelerometerValues:[F

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/opengles/GLFrameSurface$1;->this$0:Lcom/android/opengles/GLFrameSurface;

    invoke-static {v0}, Lcom/android/opengles/GLFrameSurface;->access$0(Lcom/android/opengles/GLFrameSurface;)V

    .line 86
    return-void
.end method
