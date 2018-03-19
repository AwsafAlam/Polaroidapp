.class Lmacrochip/app/newpl1200/SnapshotActivity$1;
.super Ljava/lang/Object;
.source "SnapshotActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/SnapshotActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmacrochip/app/newpl1200/SnapshotActivity;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/SnapshotActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lmacrochip/app/newpl1200/SnapshotActivity$1;)Lmacrochip/app/newpl1200/SnapshotActivity;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    iget-object v1, v1, Lmacrochip/app/newpl1200/SnapshotActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    const v2, 0x7f080020

    invoke-virtual {v1, v2}, Lmacrochip/app/newpl1200/SnapshotActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    const v2, 0x7f08001f

    invoke-virtual {v1, v2}, Lmacrochip/app/newpl1200/SnapshotActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    const v2, 0x7f08001b

    invoke-virtual {v1, v2}, Lmacrochip/app/newpl1200/SnapshotActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmacrochip/app/newpl1200/SnapshotActivity$1$1;

    invoke-direct {v2, p0}, Lmacrochip/app/newpl1200/SnapshotActivity$1$1;-><init>(Lmacrochip/app/newpl1200/SnapshotActivity$1;)V

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$1;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    const v2, 0x7f08001c

    invoke-virtual {v1, v2}, Lmacrochip/app/newpl1200/SnapshotActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    new-instance v2, Lmacrochip/app/newpl1200/SnapshotActivity$1$2;

    invoke-direct {v2, p0}, Lmacrochip/app/newpl1200/SnapshotActivity$1$2;-><init>(Lmacrochip/app/newpl1200/SnapshotActivity$1;)V

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 227
    return-void
.end method
