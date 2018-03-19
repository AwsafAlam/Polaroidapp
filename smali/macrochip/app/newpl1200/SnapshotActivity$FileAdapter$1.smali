.class Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$1;
.super Ljava/lang/Object;
.source "SnapshotActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

.field private final synthetic val$item:Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;


# direct methods
.method constructor <init>(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$1;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    iput-object p2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$1;->val$item:Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 507
    iget-object v0, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$1;->this$1:Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;

    invoke-static {v0}, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;->access$5(Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter;)Lmacrochip/app/newpl1200/SnapshotActivity;

    move-result-object v0

    iget-object v1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$FileAdapter$1;->val$item:Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;

    iget-object v1, v1, Lmacrochip/app/newpl1200/SnapshotActivity$pFileInfo;->Path:Ljava/lang/String;

    invoke-static {v0, v1}, Lmacrochip/app/newpl1200/SnapshotActivity;->access$7(Lmacrochip/app/newpl1200/SnapshotActivity;Ljava/lang/String;)V

    .line 508
    return-void
.end method
