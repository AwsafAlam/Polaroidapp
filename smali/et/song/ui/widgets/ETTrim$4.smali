.class Let/song/ui/widgets/ETTrim$4;
.super Ljava/lang/Object;
.source "ETTrim.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Let/song/ui/widgets/ETTrim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Let/song/ui/widgets/ETTrim;


# direct methods
.method constructor <init>(Let/song/ui/widgets/ETTrim;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Let/song/ui/widgets/ETTrim$4;->this$0:Let/song/ui/widgets/ETTrim;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Let/song/ui/widgets/ETButton;->ETBUTTON_SELECTED:[F

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_0
    :goto_0
    return v3

    .line 121
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v2, Let/song/ui/widgets/ETButton;->ETBUTTON_NOT_SELECTED:[F

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v0, p0, Let/song/ui/widgets/ETTrim$4;->this$0:Let/song/ui/widgets/ETTrim;

    invoke-static {v0, v3}, Let/song/ui/widgets/ETTrim;->access$10(Let/song/ui/widgets/ETTrim;Z)V

    .line 126
    iget-object v0, p0, Let/song/ui/widgets/ETTrim$4;->this$0:Let/song/ui/widgets/ETTrim;

    invoke-static {v0}, Let/song/ui/widgets/ETTrim;->access$8(Let/song/ui/widgets/ETTrim;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Let/song/ui/widgets/ETTrim$4;->this$0:Let/song/ui/widgets/ETTrim;

    iget-object v1, v1, Let/song/ui/widgets/ETTrim;->runnableLongClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
