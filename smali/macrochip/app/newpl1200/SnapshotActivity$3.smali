.class Lmacrochip/app/newpl1200/SnapshotActivity$3;
.super Ljava/lang/Object;
.source "SnapshotActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmacrochip/app/newpl1200/SnapshotActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lmacrochip/app/newpl1200/SnapshotActivity$3;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0b00ca

    .line 129
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$3;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    invoke-static {v2}, Lmacrochip/app/newpl1200/SnapshotActivity;->access$10(Lmacrochip/app/newpl1200/SnapshotActivity;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 130
    .local v0, "curIndex":I
    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$3;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    iget-object v2, v2, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabPages:[Landroid/view/View;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 151
    return-void

    .line 132
    .end local v1    # "i":I
    :pswitch_0
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$3;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lmacrochip/app/newpl1200/SnapshotActivity;->access$11(Lmacrochip/app/newpl1200/SnapshotActivity;Z)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$3;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmacrochip/app/newpl1200/SnapshotActivity;->access$11(Lmacrochip/app/newpl1200/SnapshotActivity;Z)V

    goto :goto_0

    .line 139
    .restart local v1    # "i":I
    :cond_0
    if-ne v1, v0, :cond_1

    .line 140
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$3;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    iget-object v2, v2, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabPages:[Landroid/view/View;

    aget-object v2, v2, v1

    .line 141
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 140
    check-cast v2, Landroid/widget/ImageView;

    .line 142
    iget-object v3, p0, Lmacrochip/app/newpl1200/SnapshotActivity$3;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    iget-object v3, v3, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabImage1:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$3;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    iget-object v2, v2, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabPages:[Landroid/view/View;

    aget-object v2, v2, v1

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 138
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    :cond_1
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$3;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    iget-object v2, v2, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabPages:[Landroid/view/View;

    aget-object v2, v2, v1

    .line 146
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 145
    check-cast v2, Landroid/widget/ImageView;

    .line 147
    iget-object v3, p0, Lmacrochip/app/newpl1200/SnapshotActivity$3;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    iget-object v3, v3, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabImage:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v2, p0, Lmacrochip/app/newpl1200/SnapshotActivity$3;->this$0:Lmacrochip/app/newpl1200/SnapshotActivity;

    iget-object v2, v2, Lmacrochip/app/newpl1200/SnapshotActivity;->mTabPages:[Landroid/view/View;

    aget-object v2, v2, v1

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
