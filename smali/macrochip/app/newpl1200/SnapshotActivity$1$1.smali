.class Lmacrochip/app/newpl1200/SnapshotActivity$1$1;
.super Ljava/lang/Object;
.source "SnapshotActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmacrochip/app/newpl1200/SnapshotActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmacrochip/app/newpl1200/SnapshotActivity$1;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/SnapshotActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1$1;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$1;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 193
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 194
    const-string v2, "mounted"

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 194
    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1$1;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$1;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity$1;->access$0(Lmacrochip/app/newpl1200/SnapshotActivity$1;)Lmacrochip/app/newpl1200/SnapshotActivity;

    move-result-object v1

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->access$0(Lmacrochip/app/newpl1200/SnapshotActivity;)V

    .line 199
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1$1;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$1;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity$1;->access$0(Lmacrochip/app/newpl1200/SnapshotActivity$1;)Lmacrochip/app/newpl1200/SnapshotActivity;

    move-result-object v1

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->access$1(Lmacrochip/app/newpl1200/SnapshotActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1$1;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$1;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity$1;->access$0(Lmacrochip/app/newpl1200/SnapshotActivity$1;)Lmacrochip/app/newpl1200/SnapshotActivity;

    move-result-object v1

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->access$2(Lmacrochip/app/newpl1200/SnapshotActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 202
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1$1;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$1;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity$1;->access$0(Lmacrochip/app/newpl1200/SnapshotActivity$1;)Lmacrochip/app/newpl1200/SnapshotActivity;

    move-result-object v1

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->access$3(Lmacrochip/app/newpl1200/SnapshotActivity;)Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->notifyDataSetChanged()V

    .line 209
    :goto_0
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1$1;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$1;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity$1;->access$0(Lmacrochip/app/newpl1200/SnapshotActivity$1;)Lmacrochip/app/newpl1200/SnapshotActivity;

    move-result-object v1

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->access$6(Lmacrochip/app/newpl1200/SnapshotActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    :cond_0
    :goto_1
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1$1;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$1;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity$1;->access$0(Lmacrochip/app/newpl1200/SnapshotActivity$1;)Lmacrochip/app/newpl1200/SnapshotActivity;

    move-result-object v1

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->access$4(Lmacrochip/app/newpl1200/SnapshotActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 207
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1$1;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$1;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity$1;->access$0(Lmacrochip/app/newpl1200/SnapshotActivity$1;)Lmacrochip/app/newpl1200/SnapshotActivity;

    move-result-object v1

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->access$5(Lmacrochip/app/newpl1200/SnapshotActivity;)Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1$1;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$1;

    invoke-static {v1}, Lmacrochip/app/newpl1200/SnapshotActivity$1;->access$0(Lmacrochip/app/newpl1200/SnapshotActivity$1;)Lmacrochip/app/newpl1200/SnapshotActivity;

    move-result-object v1

    iget-object v1, v1, Lmacrochip/app/newpl1200/SnapshotActivity;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v1, v2}, Lcom/app/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
