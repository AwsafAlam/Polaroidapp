.class Lcom/fh/lib/DummyEdit;
.super Landroid/view/View;
.source "SDLActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field ic:Landroid/view/inputmethod/InputConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 835
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 836
    invoke-virtual {p0, v0}, Lcom/fh/lib/DummyEdit;->setFocusableInTouchMode(Z)V

    .line 837
    invoke-virtual {p0, v0}, Lcom/fh/lib/DummyEdit;->setFocusable(Z)V

    .line 838
    invoke-virtual {p0, p0}, Lcom/fh/lib/DummyEdit;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 839
    return-void
.end method


# virtual methods
.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 843
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 887
    new-instance v0, Lcom/fh/lib/SDLInputConnection;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/fh/lib/SDLInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/fh/lib/DummyEdit;->ic:Landroid/view/inputmethod/InputConnection;

    .line 889
    const/high16 v0, 0x12000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 892
    iget-object v0, p0, Lcom/fh/lib/DummyEdit;->ic:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 850
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 851
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 852
    iget-object v1, p0, Lcom/fh/lib/DummyEdit;->ic:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 865
    :cond_0
    :goto_0
    return v0

    .line 857
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 858
    invoke-static {p2}, Lcom/fh/lib/SDLActivity;->onNativeKeyDown(I)V

    goto :goto_0

    .line 860
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 861
    invoke-static {p2}, Lcom/fh/lib/SDLActivity;->onNativeKeyUp(I)V

    goto :goto_0

    .line 865
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 877
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 878
    sget-object v0, Lcom/fh/lib/SDLActivity;->mTextEdit:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fh/lib/SDLActivity;->mTextEdit:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 879
    invoke-static {}, Lcom/fh/lib/SDLActivity;->onNativeKeyboardFocusLost()V

    .line 882
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
