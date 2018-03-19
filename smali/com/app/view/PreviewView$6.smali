.class Lcom/app/view/PreviewView$6;
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
    iput-object p1, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1022
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/app/view/PreviewView;->access$9(Lcom/app/view/PreviewView;I)V

    .line 1032
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$10(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/app/view/PreviewView;->access$11()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v2}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    iget-object v0, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v0

    invoke-static {v0}, Lcom/fh/lib/FHSDK;->setPBSpeed(I)Z

    .line 1035
    :cond_2
    return-void

    .line 1024
    :cond_3
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1026
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    if-eq v0, v1, :cond_4

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 1027
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1028
    :cond_4
    iget-object v0, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/app/view/PreviewView;->access$9(Lcom/app/view/PreviewView;I)V

    goto :goto_0

    .line 1029
    :cond_5
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$8(Lcom/app/view/PreviewView;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/app/view/PreviewView$6;->this$0:Lcom/app/view/PreviewView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/app/view/PreviewView;->access$9(Lcom/app/view/PreviewView;I)V

    goto :goto_0
.end method
