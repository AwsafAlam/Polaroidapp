.class public Lcom/fh/lib/Define$Preview;
.super Ljava/lang/Object;
.source "Define.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/lib/Define;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Preview"
.end annotation


# instance fields
.field public blocked:I

.field public chan:I

.field public encId:I

.field final synthetic this$0:Lcom/fh/lib/Define;

.field public transMode:I


# direct methods
.method public constructor <init>(Lcom/fh/lib/Define;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/fh/lib/Define$Preview;->this$0:Lcom/fh/lib/Define;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
