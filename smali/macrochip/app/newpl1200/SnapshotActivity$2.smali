.class Lmacrochip/app/newpl1200/SnapshotActivity$2;
.super Ljava/lang/Object;
.source "SnapshotActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmacrochip/app/newpl1200/SnapshotActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmacrochip/app/newpl1200/SnapshotActivity;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/SnapshotActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$2;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 91
    sget v1, Lcom/fh/lib/PlayInfo;->udpDevType:I

    if-eq v1, v4, :cond_0

    sget v1, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 92
    :cond_0
    sput v4, Lcom/fh/lib/PlayInfo;->playType:I

    .line 97
    :goto_0
    sget v1, Lcom/fh/lib/PlayInfo;->decodeType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 98
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$2;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    const-class v2, Lmacrochip/app/newpl1200/VideoPlayBySDL;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$2;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    invoke-virtual {v1, v0}, Lmacrochip/app/newpl1200/SnapshotActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    :goto_1
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$2;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->finish()V

    .line 105
    return-void

    .line 94
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    sput v3, Lcom/fh/lib/PlayInfo;->playType:I

    .line 95
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmacrochip/app/newpl1200/SysApp;->StartActive(Z)V

    goto :goto_0

    .line 101
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$2;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    const-class v2, Lmacrochip/app/newpl1200/VideoPlayByOpengl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$2;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    invoke-virtual {v1, v0}, Lmacrochip/app/newpl1200/SnapshotActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
