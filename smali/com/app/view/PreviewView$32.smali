.class Lcom/app/view/PreviewView$32;
.super Landroid/content/BroadcastReceiver;
.source "PreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/view/PreviewView;


# direct methods
.method constructor <init>(Lcom/app/view/PreviewView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/view/PreviewView$32;->this$0:Lcom/app/view/PreviewView;

    .line 1901
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1904
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1905
    .local v0, "action":Ljava/lang/String;
    const-string v1, "et.song.sjrc.wifi.app.air.h264.REMOTE_RECORD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1906
    iget-object v1, p0, Lcom/app/view/PreviewView$32;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$78(Lcom/app/view/PreviewView;)Let/song/ui/widgets/ETButton;

    move-result-object v1

    invoke-virtual {v1}, Let/song/ui/widgets/ETButton;->performClick()Z

    .line 1919
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    const-string v1, "et.song.sjrc.wifi.app.air.h264.REMOTE_RECORD_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1909
    iget-object v1, p0, Lcom/app/view/PreviewView$32;->this$0:Lcom/app/view/PreviewView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/app/view/PreviewView;->access$79(Lcom/app/view/PreviewView;I)V

    goto :goto_0

    .line 1911
    :cond_2
    const-string v1, "et.song.sjrc.wifi.app.air.h264.REMOTE_RECORD_END"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1913
    iget-object v1, p0, Lcom/app/view/PreviewView$32;->this$0:Lcom/app/view/PreviewView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/app/view/PreviewView;->access$79(Lcom/app/view/PreviewView;I)V

    goto :goto_0

    .line 1915
    :cond_3
    const-string v1, "et.song.sjrc.wifi.app.air.h264.REMOTE_PHOTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1917
    iget-object v1, p0, Lcom/app/view/PreviewView$32;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$80(Lcom/app/view/PreviewView;)V

    goto :goto_0
.end method
