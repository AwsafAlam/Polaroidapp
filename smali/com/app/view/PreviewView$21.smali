.class Lcom/app/view/PreviewView$21;
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
.field progress:I

.field final synthetic this$0:Lcom/app/view/PreviewView;


# direct methods
.method constructor <init>(Lcom/app/view/PreviewView;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/view/PreviewView$21;->this$0:Lcom/app/view/PreviewView;

    .line 1429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1432
    const/4 v0, 0x0

    iput v0, p0, Lcom/app/view/PreviewView$21;->progress:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 1436
    iput p2, p0, Lcom/app/view/PreviewView$21;->progress:I

    .line 1437
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/app/view/PreviewView$21;->this$0:Lcom/app/view/PreviewView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/app/view/PreviewView;->access$3(Lcom/app/view/PreviewView;Z)V

    .line 1443
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 1450
    iget v1, p0, Lcom/app/view/PreviewView$21;->progress:I

    mul-int/lit8 v1, v1, 0x64

    div-int/lit16 v0, v1, 0x2710

    .line 1451
    .local v0, "pos":I
    invoke-static {v0}, Lcom/fh/lib/FHSDK;->locateJumpPlayBack(I)Z

    .line 1452
    iget-object v1, p0, Lcom/app/view/PreviewView$21;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v1}, Lcom/app/view/PreviewView;->access$4(Lcom/app/view/PreviewView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1453
    iget-object v1, p0, Lcom/app/view/PreviewView$21;->this$0:Lcom/app/view/PreviewView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/app/view/PreviewView;->access$3(Lcom/app/view/PreviewView;Z)V

    .line 1454
    :cond_0
    return-void
.end method
