.class public Lmacrochip/app/newpl1200/Help2Activity$MyAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "Help2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmacrochip/app/newpl1200/Help2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lmacrochip/app/newpl1200/Help2Activity;


# direct methods
.method public constructor <init>(Lmacrochip/app/newpl1200/Help2Activity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lmacrochip/app/newpl1200/Help2Activity$MyAdapter;->this$0:Lmacrochip/app/newpl1200/Help2Activity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 146
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 134
    const v0, 0x7fffffff

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 155
    :try_start_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    iget-object v0, p0, Lmacrochip/app/newpl1200/Help2Activity$MyAdapter;->this$0:Lmacrochip/app/newpl1200/Help2Activity;

    invoke-static {v0}, Lmacrochip/app/newpl1200/Help2Activity;->access$0(Lmacrochip/app/newpl1200/Help2Activity;)[Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lmacrochip/app/newpl1200/Help2Activity$MyAdapter;->this$0:Lmacrochip/app/newpl1200/Help2Activity;

    invoke-static {v1}, Lmacrochip/app/newpl1200/Help2Activity;->access$0(Lmacrochip/app/newpl1200/Help2Activity;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p2, v1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    iget-object v0, p0, Lmacrochip/app/newpl1200/Help2Activity$MyAdapter;->this$0:Lmacrochip/app/newpl1200/Help2Activity;

    invoke-static {v0}, Lmacrochip/app/newpl1200/Help2Activity;->access$0(Lmacrochip/app/newpl1200/Help2Activity;)[Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lmacrochip/app/newpl1200/Help2Activity$MyAdapter;->this$0:Lmacrochip/app/newpl1200/Help2Activity;

    invoke-static {v1}, Lmacrochip/app/newpl1200/Help2Activity;->access$0(Lmacrochip/app/newpl1200/Help2Activity;)[Landroid/widget/ImageView;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p2, v1

    aget-object v0, v0, v1

    return-object v0

    .line 156
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 139
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
