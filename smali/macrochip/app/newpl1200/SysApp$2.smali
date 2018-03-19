.class Lmacrochip/app/newpl1200/SysApp$2;
.super Landroid/content/BroadcastReceiver;
.source "SysApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/SysApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final CONNECTIVITY_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field private static final LOG_TAG:Ljava/lang/String; = "HomeReceiver"

.field private static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field private static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field private static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field private static final SYSTEM_DIALOG_REASON_LOCK:Ljava/lang/String; = "lock"

.field private static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"


# instance fields
.field final synthetic this$0:Lmacrochip/app/newpl1200/SysApp;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/SysApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/SysApp$2;->this$0:Lmacrochip/app/newpl1200/SysApp;

    .line 433
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 443
    const-string v1, "SysApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updataReceiver:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$2;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/SysApp;->checkNetworkConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$2;->this$0:Lmacrochip/app/newpl1200/SysApp;

    iget-object v2, p0, Lmacrochip/app/newpl1200/SysApp$2;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v2}, Lmacrochip/app/newpl1200/SysApp;->getIpInfo()[I

    move-result-object v2

    invoke-static {v1, v2}, Lmacrochip/app/newpl1200/SysApp;->access$10(Lmacrochip/app/newpl1200/SysApp;[I)V

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$2;->this$0:Lmacrochip/app/newpl1200/SysApp;

    const/4 v2, 0x3

    new-array v2, v2, [I

    invoke-static {v1, v2}, Lmacrochip/app/newpl1200/SysApp;->access$10(Lmacrochip/app/newpl1200/SysApp;[I)V

    .line 449
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$2;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$11(Lmacrochip/app/newpl1200/SysApp;)Lmacrochip/app/newpl1200/UDPServer;

    move-result-object v1

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/UDPServer;->isRun()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$2;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SysApp;->access$11(Lmacrochip/app/newpl1200/SysApp;)Lmacrochip/app/newpl1200/UDPServer;

    move-result-object v1

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/UDPServer;->Stop()V

    goto :goto_0

    .line 456
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 458
    iget-object v1, p0, Lmacrochip/app/newpl1200/SysApp$2;->this$0:Lmacrochip/app/newpl1200/SysApp;

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/SysApp;->restartTCP()V

    goto :goto_0

    .line 460
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "reason":Ljava/lang/String;
    const-string v1, "HomeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reason: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v1, "homekey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    const-string v1, "HomeReceiver"

    const-string v2, "homekey"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
