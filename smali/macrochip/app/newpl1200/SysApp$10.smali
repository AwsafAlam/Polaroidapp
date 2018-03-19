.class Lmacrochip/app/newpl1200/SysApp$10;
.super Ljava/lang/Object;
.source "SysApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/SysApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmacrochip/app/newpl1200/SysApp;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/SysApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp$10;->this$0:Lmacrochip/app/newpl1200/SysApp;

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 692
    iget-object v0, p0, Lmacrochip/app/newpl1200/SysApp$10;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x27

    aput-byte v3, v1, v2

    invoke-virtual {v0, v1}, Lmacrochip/app/newpl1200/SysApp;->writeUDPCmd([B)V

    .line 695
    return-void
.end method
