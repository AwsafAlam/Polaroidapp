.class Lcom/app/view/PreviewView$18;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/app/view/PreviewView$18;->this$0:Lcom/app/view/PreviewView;

    .line 1369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/app/view/PreviewView$18;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v0

    iput p2, v0, Lcom/fh/lib/Define$BCSS;->contrast:I

    .line 1373
    iget-object v0, p0, Lcom/app/view/PreviewView$18;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v0}, Lcom/app/view/PreviewView;->access$46(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    sget v0, Lcom/fh/lib/PlayInfo;->userID:I

    iget-object v1, p0, Lcom/app/view/PreviewView$18;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fh/lib/FHSDK;->setVideoBCSS(ILcom/fh/lib/Define$BCSS;)Z

    .line 1375
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 1381
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 1387
    return-void
.end method
