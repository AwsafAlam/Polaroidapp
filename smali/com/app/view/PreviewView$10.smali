.class Lcom/app/view/PreviewView$10;
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
    iput-object p1, p0, Lcom/app/view/PreviewView$10;->this$0:Lcom/app/view/PreviewView;

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1174
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 1175
    const-string v5, "mounted"

    .line 1174
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1175
    if-eqz v4, :cond_2

    .line 1176
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 1177
    .local v3, "sd":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/app/view/PreviewView;->getSettingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1178
    .local v2, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMG_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/app/util/ActivtyUtil;->getCurSysDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1182
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1184
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1185
    sget v4, Lcom/fh/lib/PlayInfo;->userID:I

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Lcom/fh/lib/FHSDK;->shot(ILjava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1187
    iget-object v4, p0, Lcom/app/view/PreviewView$10;->this$0:Lcom/app/view/PreviewView;

    iget-object v4, v4, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/app/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1197
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "sd":Ljava/io/File;
    :goto_0
    return-void

    .line 1190
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "sd":Ljava/io/File;
    :cond_1
    iget-object v4, p0, Lcom/app/view/PreviewView$10;->this$0:Lcom/app/view/PreviewView;

    iget-object v4, v4, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const-string v5, "shot failed"

    invoke-static {v4, v5}, Lcom/app/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1193
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "sd":Ljava/io/File;
    :cond_2
    iget-object v4, p0, Lcom/app/view/PreviewView$10;->this$0:Lcom/app/view/PreviewView;

    iget-object v4, v4, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const-string v5, "have no SD card, shot failed"

    invoke-static {v4, v5}, Lcom/app/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
