.class public Lmacrochip/app/newpl1200/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;
    }
.end annotation


# instance fields
.field globalHeight:I

.field globalNum:I

.field globalWidth:I

.field final handler:Landroid/os/Handler;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCutBitmap:Landroid/graphics/Bitmap;

.field private mImageHelp:Landroid/widget/ImageView;

.field mSetBitmap:Ljava/lang/Runnable;

.field private mback:Landroid/widget/ImageButton;

.field show:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->handler:Landroid/os/Handler;

    .line 35
    iput-object v1, p0, Lmacrochip/app/newpl1200/HelpActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 36
    iput-object v1, p0, Lmacrochip/app/newpl1200/HelpActivity;->mCutBitmap:Landroid/graphics/Bitmap;

    .line 37
    new-instance v0, Lmacrochip/app/newpl1200/HelpActivity$1;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/HelpActivity$1;-><init>(Lmacrochip/app/newpl1200/HelpActivity;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mSetBitmap:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lmacrochip/app/newpl1200/HelpActivity$2;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/HelpActivity$2;-><init>(Lmacrochip/app/newpl1200/HelpActivity;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->show:Ljava/lang/Runnable;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lmacrochip/app/newpl1200/HelpActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lmacrochip/app/newpl1200/HelpActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$1(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2(Lmacrochip/app/newpl1200/HelpActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mImageHelp:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lmacrochip/app/newpl1200/HelpActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lmacrochip/app/newpl1200/HelpActivity;->mCutBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 105
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, "it":Landroid/content/Intent;
    const-class v1, Lmacrochip/app/newpl1200/WelcomeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/HelpActivity;->finish()V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0002
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/HelpActivity;->requestWindowFeature(I)Z

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {}, Lcom/app/util/MyApplication;->getInstance()Lcom/app/util/MyApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/app/util/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 50
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/HelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 51
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/HelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 52
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/HelpActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mback:Landroid/widget/ImageButton;

    .line 55
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mback:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mImageHelp:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mImageHelp:Landroid/widget/ImageView;

    new-instance v1, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;

    invoke-direct {v1, p0}, Lmacrochip/app/newpl1200/HelpActivity$MulitPointTouchListener;-><init>(Lmacrochip/app/newpl1200/HelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lmacrochip/app/newpl1200/HelpActivity;->show:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 195
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 198
    iput-object v1, p0, Lmacrochip/app/newpl1200/HelpActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 201
    :cond_0
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mCutBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    iput-object v1, p0, Lmacrochip/app/newpl1200/HelpActivity;->mCutBitmap:Landroid/graphics/Bitmap;

    .line 207
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 169
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 180
    iput-object v1, p0, Lmacrochip/app/newpl1200/HelpActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 183
    :cond_0
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mCutBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    iput-object v1, p0, Lmacrochip/app/newpl1200/HelpActivity;->mCutBitmap:Landroid/graphics/Bitmap;

    .line 189
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 190
    return-void
.end method

.method setImage()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mCutBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->mImageHelp:Landroid/widget/ImageView;

    iget-object v1, p0, Lmacrochip/app/newpl1200/HelpActivity;->mCutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    iget-object v0, p0, Lmacrochip/app/newpl1200/HelpActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lmacrochip/app/newpl1200/HelpActivity;->mSetBitmap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    :cond_0
    return-void
.end method
