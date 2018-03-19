.class Let/song/ui/libs/ETAsync$1;
.super Landroid/os/Handler;
.source "ETAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Let/song/ui/libs/ETAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 21
    invoke-static {}, Let/song/ui/libs/ETAsync;->access$0()Let/song/ui/libs/ETAsync$ImageCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-interface {v1, v0}, Let/song/ui/libs/ETAsync$ImageCallback;->imageLoaded([B)V

    .line 22
    return-void
.end method
