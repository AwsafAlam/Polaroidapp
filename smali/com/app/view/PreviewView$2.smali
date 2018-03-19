.class Lcom/app/view/PreviewView$2;
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
    iput-object p1, p0, Lcom/app/view/PreviewView$2;->this$0:Lcom/app/view/PreviewView;

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    const/4 v0, 0x0

    iput v0, p0, Lcom/app/view/PreviewView$2;->progress:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 939
    iput p2, p0, Lcom/app/view/PreviewView$2;->progress:I

    .line 940
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 945
    iget-object v0, p0, Lcom/app/view/PreviewView$2;->this$0:Lcom/app/view/PreviewView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/app/view/PreviewView;->access$3(Lcom/app/view/PreviewView;Z)V

    .line 946
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 951
    const-wide/16 v0, 0x0

    .line 952
    .local v0, "CurrentPts":J
    sget-wide v2, Lcom/app/view/PreviewView;->PBStartTime:J

    sget-wide v4, Lcom/app/view/PreviewView;->PBStopTime:J

    sget-wide v6, Lcom/app/view/PreviewView;->PBStartTime:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/app/view/PreviewView$2;->progress:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    div-long/2addr v4, v6

    add-long v0, v2, v4

    .line 953
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/fh/lib/FHSDK;->jumpPlayBack(J)Z

    .line 956
    return-void
.end method
