.class Lcom/app/view/PreviewView$23;
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
    iput-object p1, p0, Lcom/app/view/PreviewView$23;->this$0:Lcom/app/view/PreviewView;

    .line 1476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x7

    .line 1481
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/app/view/PreviewView$23;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/app/view/PreviewView$23;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/app/view/PreviewView$23;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/app/view/PreviewView;->access$9(Lcom/app/view/PreviewView;I)V

    .line 1490
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/app/view/PreviewView$23;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v0

    invoke-static {v0}, Lcom/fh/lib/FHSDK;->setLocatePBSpeed(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1491
    iget-object v0, p0, Lcom/app/view/PreviewView$23;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$10(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/app/view/PreviewView;->access$11()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/app/view/PreviewView$23;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1492
    :cond_2
    :goto_1
    return-void

    .line 1483
    :cond_3
    iget-object v0, p0, Lcom/app/view/PreviewView$23;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1484
    iget-object v0, p0, Lcom/app/view/PreviewView$23;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0, v2}, Lcom/app/view/PreviewView;->access$9(Lcom/app/view/PreviewView;I)V

    goto :goto_0

    .line 1485
    :cond_4
    iget-object v0, p0, Lcom/app/view/PreviewView$23;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v0

    if-ne v2, v0, :cond_5

    .line 1486
    iget-object v0, p0, Lcom/app/view/PreviewView$23;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/app/view/PreviewView;->access$9(Lcom/app/view/PreviewView;I)V

    goto :goto_0

    .line 1487
    :cond_5
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/app/view/PreviewView$23;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1
.end method
