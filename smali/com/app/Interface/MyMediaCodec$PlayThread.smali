.class Lcom/app/Interface/MyMediaCodec$PlayThread;
.super Ljava/lang/Object;
.source "MyMediaCodec.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/Interface/MyMediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/Interface/MyMediaCodec;


# direct methods
.method constructor <init>(Lcom/app/Interface/MyMediaCodec;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/app/Interface/MyMediaCodec$PlayThread;->this$0:Lcom/app/Interface/MyMediaCodec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 487
    monitor-enter p0

    .line 488
    :try_start_0
    invoke-static {}, Lcom/fh/lib/FHSDK;->audioInit()Z

    .line 489
    invoke-static {}, Lcom/fh/lib/FHSDK;->startPlay()Z

    .line 487
    monitor-exit p0

    .line 491
    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
