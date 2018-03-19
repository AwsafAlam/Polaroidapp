.class Lcom/app/view/PreviewView$15;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/app/view/PreviewView$15;->this$0:Lcom/app/view/PreviewView;

    .line 1328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1333
    sget v0, Lcom/fh/lib/PlayInfo;->userID:I

    iget-object v1, p0, Lcom/app/view/PreviewView$15;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/lib/FHSDK;->setVideoBCSS(ILcom/fh/lib/Define$BCSS;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    sget v0, Lcom/fh/lib/PlayInfo;->userID:I

    invoke-static {v0}, Lcom/fh/lib/FHSDK;->saveDevConfig(I)Z

    .line 1342
    :goto_0
    return-void

    .line 1340
    :cond_0
    iget-object v0, p0, Lcom/app/view/PreviewView$15;->this$0:Lcom/app/view/PreviewView;

    iget-object v0, v0, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const-string v1, "\u951f\u65a4\u62f7\u951f\u65a4\u62f7\u5931\u951f\u65a4\u62f7"

    invoke-static {v0, v1}, Lcom/app/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
