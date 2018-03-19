.class Lcom/fh/lib/SDLMain;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 537
    const-class v1, Lcom/fh/lib/SDLActivity;

    monitor-enter v1

    .line 538
    :try_start_0
    invoke-static {}, Lcom/fh/lib/SDLActivity;->nativeInit()V

    .line 537
    monitor-exit v1

    .line 541
    return-void

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
