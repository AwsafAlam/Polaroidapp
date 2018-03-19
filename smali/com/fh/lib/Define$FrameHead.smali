.class public Lcom/fh/lib/Define$FrameHead;
.super Ljava/lang/Object;
.source "Define.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/lib/Define;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameHead"
.end annotation


# instance fields
.field public frameType:I

.field public height:I

.field final synthetic this$0:Lcom/fh/lib/Define;

.field public timeStamp:J

.field public videoFormat:I

.field public width:I


# direct methods
.method public constructor <init>(Lcom/fh/lib/Define;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/fh/lib/Define$FrameHead;->this$0:Lcom/fh/lib/Define;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
