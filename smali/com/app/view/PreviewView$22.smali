.class Lcom/app/view/PreviewView$22;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/app/view/PreviewView$22;->this$0:Lcom/app/view/PreviewView;

    .line 1457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1462
    iget-object v2, p0, Lcom/app/view/PreviewView$22;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$4(Lcom/app/view/PreviewView;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/fh/lib/FHSDK;->locateContinuePBPlay()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1463
    iget-object v2, p0, Lcom/app/view/PreviewView$22;->this$0:Lcom/app/view/PreviewView;

    iget-object v3, p0, Lcom/app/view/PreviewView$22;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v3}, Lcom/app/view/PreviewView;->access$4(Lcom/app/view/PreviewView;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v0}, Lcom/app/view/PreviewView;->access$5(Lcom/app/view/PreviewView;Z)V

    .line 1464
    iget-object v0, p0, Lcom/app/view/PreviewView$22;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$53(Lcom/app/view/PreviewView;)Landroid/widget/ImageView;

    move-result-object v0

    const v2, 0x1080024

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1465
    iget-object v0, p0, Lcom/app/view/PreviewView$22;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0, v1}, Lcom/app/view/PreviewView;->access$3(Lcom/app/view/PreviewView;Z)V

    .line 1472
    :cond_1
    :goto_0
    return-void

    .line 1467
    :cond_2
    iget-object v2, p0, Lcom/app/view/PreviewView$22;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$4(Lcom/app/view/PreviewView;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/fh/lib/FHSDK;->locatePausePBPlay()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1469
    iget-object v2, p0, Lcom/app/view/PreviewView$22;->this$0:Lcom/app/view/PreviewView;

    iget-object v3, p0, Lcom/app/view/PreviewView$22;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v3}, Lcom/app/view/PreviewView;->access$4(Lcom/app/view/PreviewView;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-static {v2, v1}, Lcom/app/view/PreviewView;->access$5(Lcom/app/view/PreviewView;Z)V

    .line 1470
    iget-object v0, p0, Lcom/app/view/PreviewView$22;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$53(Lcom/app/view/PreviewView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    move v1, v0

    .line 1469
    goto :goto_1
.end method
