.class public Lcom/fh/lib/Define$DeviceTime;
.super Ljava/lang/Object;
.source "Define.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/lib/Define;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceTime"
.end annotation


# instance fields
.field public day:I

.field public hour:I

.field public minute:I

.field public month:I

.field public msecond:I

.field public second:I

.field final synthetic this$0:Lcom/fh/lib/Define;

.field public wday:I

.field public year:I


# direct methods
.method public constructor <init>(Lcom/fh/lib/Define;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/fh/lib/Define$DeviceTime;->this$0:Lcom/fh/lib/Define;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
