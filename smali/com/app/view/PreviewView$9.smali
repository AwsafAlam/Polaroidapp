.class Lcom/app/view/PreviewView$9;
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
    iput-object p1, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    .line 1130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1132
    invoke-static {}, Lcom/app/view/PreviewView;->getSDCardPath()Ljava/lang/String;

    .line 1133
    iget-object v4, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v4}, Lcom/app/view/PreviewView;->access$13(Lcom/app/view/PreviewView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1134
    invoke-static {}, Lcom/fh/lib/FHSDK;->stopLocalRecord()Z

    .line 1135
    iget-object v4, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v4, v7}, Lcom/app/view/PreviewView;->access$14(Lcom/app/view/PreviewView;Z)V

    .line 1137
    iget-object v4, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v4}, Lcom/app/view/PreviewView;->access$15(Lcom/app/view/PreviewView;)Landroid/widget/Button;

    move-result-object v5

    iget-object v4, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    iget-object v4, v4, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const v6, 0x7f080014

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v4, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v4}, Lcom/app/view/PreviewView;->access$16(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1139
    iget-object v4, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v4}, Lcom/app/view/PreviewView;->access$17(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    iget-object v5, v5, Lcom/app/view/PreviewView;->recTimeThread:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1140
    iget-object v4, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v4, v7}, Lcom/app/view/PreviewView;->access$18(Lcom/app/view/PreviewView;I)V

    .line 1168
    :goto_0
    return-void

    .line 1143
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 1144
    const-string v5, "mounted"

    .line 1143
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1144
    if-eqz v4, :cond_3

    .line 1145
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 1146
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

    .line 1147
    .local v2, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VIDEO_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/app/util/ActivtyUtil;->getCurSysDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1149
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1151
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1153
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".H264"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1154
    invoke-static {v2}, Lcom/fh/lib/FHSDK;->startLocalRecord(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1156
    iget-object v4, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/app/view/PreviewView;->access$14(Lcom/app/view/PreviewView;Z)V

    .line 1158
    iget-object v4, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v4}, Lcom/app/view/PreviewView;->access$15(Lcom/app/view/PreviewView;)Landroid/widget/Button;

    move-result-object v5

    iget-object v4, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    iget-object v4, v4, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const v6, 0x7f080015

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    iget-object v4, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v4}, Lcom/app/view/PreviewView;->access$16(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1160
    iget-object v4, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v4}, Lcom/app/view/PreviewView;->access$17(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    iget-object v5, v5, Lcom/app/view/PreviewView;->recTimeThread:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1162
    :cond_2
    iget-object v4, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    iget-object v4, v4, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const-string v5, "\u5f55\u951f\u65a4\u62f7\u5931\u951f\u65a4\u62f7"

    invoke-static {v4, v5}, Lcom/app/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1165
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "sd":Ljava/io/File;
    :cond_3
    iget-object v4, p0, Lcom/app/view/PreviewView$9;->this$0:Lcom/app/view/PreviewView;

    iget-object v4, v4, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const-string v5, "have no SD card, record failed"

    invoke-static {v4, v5}, Lcom/app/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
