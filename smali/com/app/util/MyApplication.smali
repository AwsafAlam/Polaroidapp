.class public Lcom/app/util/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static instance:Lcom/app/util/MyApplication;


# instance fields
.field public activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/app/util/MyApplication;->activityList:Ljava/util/List;

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/app/util/MyApplication;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/app/util/MyApplication;->instance:Lcom/app/util/MyApplication;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/app/util/MyApplication;

    invoke-direct {v0}, Lcom/app/util/MyApplication;-><init>()V

    sput-object v0, Lcom/app/util/MyApplication;->instance:Lcom/app/util/MyApplication;

    .line 22
    :cond_0
    sget-object v0, Lcom/app/util/MyApplication;->instance:Lcom/app/util/MyApplication;

    return-object v0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/app/util/MyApplication;->activityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 32
    iget-object v1, p0, Lcom/app/util/MyApplication;->activityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 38
    return-void

    .line 32
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 35
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
