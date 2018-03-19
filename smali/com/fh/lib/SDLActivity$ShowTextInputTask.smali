.class Lcom/fh/lib/SDLActivity$ShowTextInputTask;
.super Ljava/lang/Object;
.source "SDLActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/lib/SDLActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShowTextInputTask"
.end annotation


# static fields
.field static final HEIGHT_PADDING:I = 0xf


# instance fields
.field public h:I

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput p1, p0, Lcom/fh/lib/SDLActivity$ShowTextInputTask;->x:I

    .line 380
    iput p2, p0, Lcom/fh/lib/SDLActivity$ShowTextInputTask;->y:I

    .line 381
    iput p3, p0, Lcom/fh/lib/SDLActivity$ShowTextInputTask;->w:I

    .line 382
    iput p4, p0, Lcom/fh/lib/SDLActivity$ShowTextInputTask;->h:I

    .line 383
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 387
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 388
    iget v2, p0, Lcom/fh/lib/SDLActivity$ShowTextInputTask;->w:I

    iget v3, p0, Lcom/fh/lib/SDLActivity$ShowTextInputTask;->h:I

    add-int/lit8 v3, v3, 0xf

    iget v4, p0, Lcom/fh/lib/SDLActivity$ShowTextInputTask;->x:I

    iget v5, p0, Lcom/fh/lib/SDLActivity$ShowTextInputTask;->y:I

    .line 387
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 390
    .local v1, "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    sget-object v2, Lcom/fh/lib/SDLActivity;->mTextEdit:Landroid/view/View;

    if-nez v2, :cond_0

    .line 391
    new-instance v2, Lcom/fh/lib/DummyEdit;

    invoke-static {}, Lcom/fh/lib/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fh/lib/DummyEdit;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/fh/lib/SDLActivity;->mTextEdit:Landroid/view/View;

    .line 393
    sget-object v2, Lcom/fh/lib/SDLActivity;->mLayout:Landroid/view/ViewGroup;

    sget-object v3, Lcom/fh/lib/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    :goto_0
    sget-object v2, Lcom/fh/lib/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 399
    sget-object v2, Lcom/fh/lib/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 401
    invoke-static {}, Lcom/fh/lib/SDLActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 402
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    sget-object v2, Lcom/fh/lib/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v0, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 403
    return-void

    .line 395
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    sget-object v2, Lcom/fh/lib/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
