.class public Lcom/android/opengles/GLFrameRenderer$RGBRes;
.super Ljava/lang/Object;
.source "GLFrameRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/opengles/GLFrameRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RGBRes"
.end annotation


# instance fields
.field public height:I

.field public rgb:[B

.field final synthetic this$0:Lcom/android/opengles/GLFrameRenderer;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/android/opengles/GLFrameRenderer;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/opengles/GLFrameRenderer$RGBRes;->this$0:Lcom/android/opengles/GLFrameRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
