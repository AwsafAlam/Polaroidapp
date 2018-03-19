.class Lcom/app/view/PreviewView$3;
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
    iput-object p1, p0, Lcom/app/view/PreviewView$3;->this$0:Lcom/app/view/PreviewView;

    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 965
    iget-object v1, p0, Lcom/app/view/PreviewView$3;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$4(Lcom/app/view/PreviewView;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/fh/lib/FHSDK;->continuePBPlay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 966
    iget-object v1, p0, Lcom/app/view/PreviewView$3;->this$0:Lcom/app/view/PreviewView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/app/view/PreviewView;->access$5(Lcom/app/view/PreviewView;Z)V

    .line 967
    iget-object v1, p0, Lcom/app/view/PreviewView$3;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$6(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    iget-object v1, p0, Lcom/app/view/PreviewView$3;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$7(Lcom/app/view/PreviewView;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/app/view/PreviewView$3;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$4(Lcom/app/view/PreviewView;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/fh/lib/FHSDK;->pausePBPlay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    iget-object v1, p0, Lcom/app/view/PreviewView$3;->this$0:Lcom/app/view/PreviewView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/app/view/PreviewView;->access$5(Lcom/app/view/PreviewView;Z)V

    .line 973
    iget-object v1, p0, Lcom/app/view/PreviewView$3;->this$0:Lcom/app/view/PreviewView;

    iget-object v1, v1, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 974
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/app/view/PreviewView$3;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$6(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    iget-object v1, p0, Lcom/app/view/PreviewView$3;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$7(Lcom/app/view/PreviewView;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
