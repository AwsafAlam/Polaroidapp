.class Lcom/app/view/PreviewView$7;
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
    iput-object p1, p0, Lcom/app/view/PreviewView$7;->this$0:Lcom/app/view/PreviewView;

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f080013

    .line 1041
    const/4 v0, 0x0

    .line 1042
    .local v0, "str":Ljava/lang/String;
    sget v1, Lcom/fh/lib/PlayInfo;->userID:I

    invoke-static {v1}, Lcom/fh/lib/FHSDK;->getRemoteRecordState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/app/view/PreviewView$7;->this$0:Lcom/app/view/PreviewView;

    iget-object v1, v1, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/app/view/PreviewView$7;->this$0:Lcom/app/view/PreviewView;

    iget-object v1, v1, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const v3, 0x7f08000d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    sget v1, Lcom/fh/lib/PlayInfo;->userID:I

    invoke-static {v1}, Lcom/fh/lib/FHSDK;->stopRemoteRecord(I)Z

    .line 1047
    iget-object v1, p0, Lcom/app/view/PreviewView$7;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$12(Lcom/app/view/PreviewView;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/app/view/PreviewView$7;->this$0:Lcom/app/view/PreviewView;

    iget-object v2, v2, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    :goto_0
    iget-object v1, p0, Lcom/app/view/PreviewView$7;->this$0:Lcom/app/view/PreviewView;

    iget-object v1, v1, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/app/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1062
    return-void

    .line 1051
    :cond_0
    sget v1, Lcom/fh/lib/PlayInfo;->userID:I

    invoke-static {v1}, Lcom/fh/lib/FHSDK;->startRemoteRecord(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1053
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/app/view/PreviewView$7;->this$0:Lcom/app/view/PreviewView;

    iget-object v1, v1, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/app/view/PreviewView$7;->this$0:Lcom/app/view/PreviewView;

    iget-object v1, v1, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const v3, 0x7f08000c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1054
    iget-object v1, p0, Lcom/app/view/PreviewView$7;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$12(Lcom/app/view/PreviewView;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/app/view/PreviewView$7;->this$0:Lcom/app/view/PreviewView;

    iget-object v2, v2, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1058
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/app/view/PreviewView$7;->this$0:Lcom/app/view/PreviewView;

    iget-object v1, v1, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/app/view/PreviewView$7;->this$0:Lcom/app/view/PreviewView;

    iget-object v1, v1, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const v3, 0x7f08000f

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
