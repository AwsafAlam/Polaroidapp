.class public Lcom/fh/lib/Define$Picture;
.super Ljava/lang/Object;
.source "Define.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/lib/Define;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Picture"
.end annotation


# instance fields
.field public chanID:I

.field public dataSize:J

.field public frameCount:J

.field public lockFlag:I

.field public picType:I

.field public startTime:J

.field public stopTime:J

.field final synthetic this$0:Lcom/fh/lib/Define;


# direct methods
.method public constructor <init>(Lcom/fh/lib/Define;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/fh/lib/Define$Picture;->this$0:Lcom/fh/lib/Define;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
