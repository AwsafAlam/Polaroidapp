.class Lcom/fh/lib/SDLSurface$1;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fh/lib/SDLSurface;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fh/lib/SDLSurface;


# direct methods
.method constructor <init>(Lcom/fh/lib/SDLSurface;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fh/lib/SDLSurface$1;->this$0:Lcom/fh/lib/SDLSurface;

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 679
    :try_start_0
    sget-object v0, Lcom/fh/lib/SDLActivity;->mSDLThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    sget-boolean v0, Lcom/fh/lib/SDLActivity;->mExitCalledFromJava:Z

    if-nez v0, :cond_0

    .line 685
    invoke-static {}, Lcom/fh/lib/SDLActivity;->handleNativeExit()V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 684
    sget-boolean v0, Lcom/fh/lib/SDLActivity;->mExitCalledFromJava:Z

    if-nez v0, :cond_0

    .line 685
    invoke-static {}, Lcom/fh/lib/SDLActivity;->handleNativeExit()V

    goto :goto_0

    .line 682
    :catchall_0
    move-exception v0

    .line 684
    sget-boolean v1, Lcom/fh/lib/SDLActivity;->mExitCalledFromJava:Z

    if-nez v1, :cond_1

    .line 685
    invoke-static {}, Lcom/fh/lib/SDLActivity;->handleNativeExit()V

    .line 687
    :cond_1
    throw v0
.end method
