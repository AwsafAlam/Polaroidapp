.class Lcom/app/view/PreviewView$29;
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
    iput-object p1, p0, Lcom/app/view/PreviewView$29;->this$0:Lcom/app/view/PreviewView;

    .line 1741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1744
    iget-object v4, p0, Lcom/app/view/PreviewView$29;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v4}, Lcom/app/view/PreviewView;->access$60(Lcom/app/view/PreviewView;)I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    invoke-static {v4, v6}, Lcom/app/view/PreviewView;->access$18(Lcom/app/view/PreviewView;I)V

    mul-int/lit16 v4, v5, 0x3e8

    int-to-long v2, v4

    .line 1745
    .local v2, "ms":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1746
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    const-string v4, "GMT+00:00"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1747
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1748
    .local v1, "hms":Ljava/lang/String;
    iget-object v4, p0, Lcom/app/view/PreviewView$29;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v4}, Lcom/app/view/PreviewView;->access$16(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1750
    iget-object v4, p0, Lcom/app/view/PreviewView$29;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v4}, Lcom/app/view/PreviewView;->access$17(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/app/view/PreviewView$29;->this$0:Lcom/app/view/PreviewView;

    iget-object v5, v5, Lcom/app/view/PreviewView;->recTimeThread:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1751
    return-void
.end method
