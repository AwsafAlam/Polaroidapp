.class public Lmacrochip/app/newpl1200/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmacrochip/app/newpl1200/WelcomeActivity$MsgHandler;
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field public mContext:Landroid/content/Context;

.field private moreCfgObj:Lmacrochip/app/newpl1200/MoreCfg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lmacrochip/app/newpl1200/WelcomeActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    new-instance v0, Lmacrochip/app/newpl1200/MoreCfg;

    invoke-direct {v0}, Lmacrochip/app/newpl1200/MoreCfg;-><init>()V

    iput-object v0, p0, Lmacrochip/app/newpl1200/WelcomeActivity;->moreCfgObj:Lmacrochip/app/newpl1200/MoreCfg;

    .line 34
    return-void
.end method

.method private ConnectWifi(Ljava/lang/String;)V
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 208
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lmacrochip/app/newpl1200/WelcomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 209
    .local v1, "mWifiManager":Landroid/net/wifi/WifiManager;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 210
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 212
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 213
    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 214
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 215
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 216
    .local v2, "wcgID":I
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 217
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 218
    return-void
.end method

.method static synthetic access$0()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lmacrochip/app/newpl1200/WelcomeActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0b0018

    if-ne v2, v3, :cond_5

    .line 155
    sget v2, Lcom/fh/lib/PlayInfo;->udpDevType:I

    if-eq v2, v5, :cond_0

    sget v2, Lcom/fh/lib/PlayInfo;->udpDevType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 157
    :cond_0
    sput v5, Lcom/fh/lib/PlayInfo;->playType:I

    .line 164
    :goto_0
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v2

    invoke-virtual {v2, v4}, Lmacrochip/app/newpl1200/SysApp;->StartCheckWork(Z)V

    .line 179
    sget v2, Lcom/fh/lib/PlayInfo;->decodeType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 180
    sget v2, Lcom/fh/lib/PlayInfo;->decodeType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 182
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lmacrochip/app/newpl1200/VideoPlayBySDL;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lmacrochip/app/newpl1200/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 161
    :cond_3
    sput v4, Lcom/fh/lib/PlayInfo;->playType:I

    .line 162
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v2

    invoke-virtual {v2, v4}, Lmacrochip/app/newpl1200/SysApp;->StartActive(Z)V

    goto :goto_0

    .line 187
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lmacrochip/app/newpl1200/VideoPlayByOpengl;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lmacrochip/app/newpl1200/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 196
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0b0017

    if-ne v2, v3, :cond_2

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lmacrochip/app/newpl1200/Help2Activity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "helpIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x400

    .line 41
    const-string v0, "WelcomeActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/WelcomeActivity;->requestWindowFeature(I)Z

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {}, Lcom/app/util/MyApplication;->getInstance()Lcom/app/util/MyApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/app/util/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 45
    iput-object p0, p0, Lmacrochip/app/newpl1200/WelcomeActivity;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 47
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 48
    invoke-static {p0}, Let/song/ui/libs/ETWindow;->GetWindowWidth(Landroid/app/Activity;)I

    move-result v0

    sput v0, Let/song/ui/libs/ETGlobal;->W:I

    .line 49
    invoke-static {p0}, Let/song/ui/libs/ETWindow;->GetWindowHeight(Landroid/app/Activity;)I

    move-result v0

    sput v0, Let/song/ui/libs/ETGlobal;->H:I

    .line 50
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/WelcomeActivity;->setContentView(I)V

    .line 52
    new-instance v0, Lmacrochip/app/newpl1200/WelcomeActivity$MsgHandler;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/WelcomeActivity$MsgHandler;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lmacrochip/app/newpl1200/WelcomeActivity;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmacrochip/app/newpl1200/WelcomeActivity$1;

    invoke-direct {v1, p0}, Lmacrochip/app/newpl1200/WelcomeActivity$1;-><init>(Lmacrochip/app/newpl1200/WelcomeActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    invoke-static {}, Lcom/fh/lib/FHSDK;->apiInit()Z

    .line 86
    const/4 v0, 0x0

    sput v0, Lcom/fh/lib/PlayInfo;->decodeType:I

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 109
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 92
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 93
    invoke-static {}, Lmacrochip/app/newpl1200/SysApp;->getMe()Lmacrochip/app/newpl1200/SysApp;

    move-result-object v0

    invoke-virtual {v0}, Lmacrochip/app/newpl1200/SysApp;->sendUDPEndCmd()V

    .line 94
    invoke-static {}, Lcom/app/util/MyApplication;->getInstance()Lcom/app/util/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/app/util/MyApplication;->exit()V

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 104
    return-void
.end method
