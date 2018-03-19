.class Lcom/app/view/PreviewView$27;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/app/view/PreviewView$27;->this$0:Lcom/app/view/PreviewView;

    .line 1685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/app/view/PreviewView$27;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$0(Lcom/app/view/PreviewView;)Lcom/app/util/WLANCfg;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/view/PreviewView$27;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$55(Lcom/app/view/PreviewView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/app/view/PreviewView$27;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$0(Lcom/app/view/PreviewView;)Lcom/app/util/WLANCfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/util/WLANCfg;->getSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/app/view/PreviewView$27;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$55(Lcom/app/view/PreviewView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/app/view/PreviewView$27;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$0(Lcom/app/view/PreviewView;)Lcom/app/util/WLANCfg;

    move-result-object v0

    iget-object v1, p0, Lcom/app/view/PreviewView$27;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$0(Lcom/app/view/PreviewView;)Lcom/app/util/WLANCfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/app/util/WLANCfg;->getNetWordId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/app/util/WLANCfg;->disConnectionWifi(I)V

    .line 1705
    iget-object v0, p0, Lcom/app/view/PreviewView$27;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$56(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1706
    iget-object v0, p0, Lcom/app/view/PreviewView$27;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$56(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/app/view/PreviewView$27;->this$0:Lcom/app/view/PreviewView;

    iget-object v1, v1, Lcom/app/view/PreviewView;->checkSSIDThread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1708
    :cond_0
    return-void
.end method
