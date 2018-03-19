.class Lcom/example/photo/PhotosImageView$1;
.super Ljava/lang/Object;
.source "PhotosImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/photo/PhotosImageView;->postTranslateDur(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/photo/PhotosImageView;

.field private final synthetic val$durationMs:F

.field private final synthetic val$incrementPerMs:F

.field private final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/example/photo/PhotosImageView;FJF)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/photo/PhotosImageView$1;->this$0:Lcom/example/photo/PhotosImageView;

    iput p2, p0, Lcom/example/photo/PhotosImageView$1;->val$durationMs:F

    iput-wide p3, p0, Lcom/example/photo/PhotosImageView$1;->val$startTime:J

    iput p5, p0, Lcom/example/photo/PhotosImageView$1;->val$incrementPerMs:F

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 119
    .local v2, "now":J
    iget v1, p0, Lcom/example/photo/PhotosImageView$1;->val$durationMs:F

    iget-wide v4, p0, Lcom/example/photo/PhotosImageView$1;->val$startTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 120
    .local v0, "currentMs":F
    iget-object v1, p0, Lcom/example/photo/PhotosImageView$1;->this$0:Lcom/example/photo/PhotosImageView;

    const/4 v4, 0x0

    iget v5, p0, Lcom/example/photo/PhotosImageView$1;->val$incrementPerMs:F

    mul-float/2addr v5, v0

    iget-object v6, p0, Lcom/example/photo/PhotosImageView$1;->this$0:Lcom/example/photo/PhotosImageView;

    invoke-static {v6}, Lcom/example/photo/PhotosImageView;->access$0(Lcom/example/photo/PhotosImageView;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/example/photo/PhotosImageView;->postTranslate(FF)V

    .line 121
    iget-object v1, p0, Lcom/example/photo/PhotosImageView$1;->this$0:Lcom/example/photo/PhotosImageView;

    iget v4, p0, Lcom/example/photo/PhotosImageView$1;->val$incrementPerMs:F

    mul-float/2addr v4, v0

    invoke-static {v1, v4}, Lcom/example/photo/PhotosImageView;->access$1(Lcom/example/photo/PhotosImageView;F)V

    .line 122
    iget v1, p0, Lcom/example/photo/PhotosImageView$1;->val$durationMs:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/example/photo/PhotosImageView$1;->this$0:Lcom/example/photo/PhotosImageView;

    invoke-static {v1}, Lcom/example/photo/PhotosImageView;->access$2(Lcom/example/photo/PhotosImageView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    :cond_0
    return-void
.end method
