.class Lcom/fh/lib/SDLInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "SDLActivity.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "fullEditor"    # Z

    .prologue
    .line 899
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 901
    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 928
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fh/lib/SDLInputConnection;->nativeCommitText(Ljava/lang/String;I)V

    .line 930
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 4
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/16 v3, 0x43

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 948
    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 950
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-super {p0, v2}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 951
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-super {p0, v2}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 954
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 950
    goto :goto_0

    .line 954
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_0
.end method

.method public native nativeCommitText(Ljava/lang/String;I)V
.end method

.method public native nativeSetComposingText(Ljava/lang/String;I)V
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 910
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 911
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 912
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/fh/lib/SDLInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 915
    :cond_0
    invoke-static {v0}, Lcom/fh/lib/SDLActivity;->onNativeKeyDown(I)V

    .line 922
    :goto_0
    return v1

    .line 917
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 919
    invoke-static {v0}, Lcom/fh/lib/SDLActivity;->onNativeKeyUp(I)V

    goto :goto_0

    .line 922
    :cond_2
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    .line 936
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fh/lib/SDLInputConnection;->nativeSetComposingText(Ljava/lang/String;I)V

    .line 938
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v0

    return v0
.end method
