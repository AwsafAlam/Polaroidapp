.class Lcom/app/view/PreviewView$12;
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
    iput-object p1, p0, Lcom/app/view/PreviewView$12;->this$0:Lcom/app/view/PreviewView;

    .line 1217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f080019

    .line 1221
    const/4 v0, 0x0

    .line 1223
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/app/view/PreviewView$12;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$23(Lcom/app/view/PreviewView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1225
    iget-object v1, p0, Lcom/app/view/PreviewView$12;->this$0:Lcom/app/view/PreviewView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/app/view/PreviewView;->access$24(Lcom/app/view/PreviewView;Z)V

    .line 1226
    invoke-static {}, Lcom/app/view/PreviewView;->stopTalkThread()V

    .line 1227
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/app/view/PreviewView$12;->this$0:Lcom/app/view/PreviewView;

    iget-object v1, v1, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const v3, 0x7f08000c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/app/view/PreviewView$12;->this$0:Lcom/app/view/PreviewView;

    iget-object v1, v1, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1228
    iget-object v1, p0, Lcom/app/view/PreviewView$12;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$25(Lcom/app/view/PreviewView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    :goto_0
    return-void

    .line 1232
    :cond_0
    iget-object v1, p0, Lcom/app/view/PreviewView$12;->this$0:Lcom/app/view/PreviewView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/app/view/PreviewView;->access$24(Lcom/app/view/PreviewView;Z)V

    .line 1233
    invoke-static {}, Lcom/app/view/PreviewView;->startTalkThread()V

    .line 1234
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/app/view/PreviewView$12;->this$0:Lcom/app/view/PreviewView;

    iget-object v1, v1, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const v3, 0x7f08000d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/app/view/PreviewView$12;->this$0:Lcom/app/view/PreviewView;

    iget-object v1, v1, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1235
    iget-object v1, p0, Lcom/app/view/PreviewView$12;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$25(Lcom/app/view/PreviewView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
