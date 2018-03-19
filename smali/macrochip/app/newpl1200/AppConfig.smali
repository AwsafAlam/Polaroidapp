.class public Lmacrochip/app/newpl1200/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field public static final PLAYER_BUFFER_END:I = 0x2712

.field public static final PLAYER_BUFFER_GOING:I = 0x2714

.field public static final PLAYER_BUFFER_START:I = 0x2711

.field public static final PLAYER_EN_REACED:I = 0x2715

.field public static final PLAYER_SURFACE_SIZE:I = 0x2713

.field private static final TAG:Ljava/lang/String; = "AppConfig"

.field public static final TCP_CONNECT_ERROR:I = 0x2afb

.field public static final TCP_CONNECT_SUCCEED:I = 0x2af9

.field public static final TCP_RECEIVE_DATA:I = 0x2afa


# instance fields
.field private final DESKEY:Ljava/lang/String;

.field public Density:F

.field public DensityDpi:I

.field public DesktopH:I

.field public DesktopW:I

.field public DeviceMAC:Ljava/lang/String;

.field public Xdpi:F

.field public Ydip:F

.field private mContext:Landroid/content/Context;

.field private mSharePre:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v1, "ecardkey"

    iput-object v1, p0, Lmacrochip/app/newpl1200/AppConfig;->DESKEY:Ljava/lang/String;

    .line 30
    iput v3, p0, Lmacrochip/app/newpl1200/AppConfig;->DesktopW:I

    .line 31
    iput v3, p0, Lmacrochip/app/newpl1200/AppConfig;->DesktopH:I

    .line 32
    iput v2, p0, Lmacrochip/app/newpl1200/AppConfig;->Density:F

    .line 33
    iput v3, p0, Lmacrochip/app/newpl1200/AppConfig;->DensityDpi:I

    .line 34
    iput v2, p0, Lmacrochip/app/newpl1200/AppConfig;->Xdpi:F

    .line 35
    iput v2, p0, Lmacrochip/app/newpl1200/AppConfig;->Ydip:F

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lmacrochip/app/newpl1200/AppConfig;->DeviceMAC:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lmacrochip/app/newpl1200/AppConfig;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 42
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lmacrochip/app/newpl1200/AppConfig;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lmacrochip/app/newpl1200/AppConfig;->mSharePre:Landroid/content/SharedPreferences;

    .line 44
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lmacrochip/app/newpl1200/AppConfig;->DesktopW:I

    .line 45
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lmacrochip/app/newpl1200/AppConfig;->DesktopH:I

    .line 46
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lmacrochip/app/newpl1200/AppConfig;->Density:F

    .line 47
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lmacrochip/app/newpl1200/AppConfig;->DensityDpi:I

    .line 48
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v1, p0, Lmacrochip/app/newpl1200/AppConfig;->Xdpi:F

    .line 49
    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v1, p0, Lmacrochip/app/newpl1200/AppConfig;->Ydip:F

    .line 50
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/AppConfig;->getLocalMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmacrochip/app/newpl1200/AppConfig;->DeviceMAC:Ljava/lang/String;

    .line 51
    const-string v1, "AppConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DesktopW:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lmacrochip/app/newpl1200/AppConfig;->DesktopW:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  DesktopH:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmacrochip/app/newpl1200/AppConfig;->DesktopH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Density:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmacrochip/app/newpl1200/AppConfig;->Density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  DensityDpi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmacrochip/app/newpl1200/AppConfig;->DensityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Xdpi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmacrochip/app/newpl1200/AppConfig;->Xdpi:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  Ydip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmacrochip/app/newpl1200/AppConfig;->Ydip:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method


# virtual methods
.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, ""

    .line 78
    .local v0, "reStr":Ljava/lang/String;
    invoke-static {p1}, Let/song/ui/libs/ETTool;->StrIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmacrochip/app/newpl1200/AppConfig;->mSharePre:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lmacrochip/app/newpl1200/AppConfig;->mSharePre:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    return-object v0
.end method

.method public getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lmacrochip/app/newpl1200/AppConfig;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "reStr":Ljava/lang/String;
    invoke-static {v0}, Let/song/ui/libs/ETTool;->StrIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    move-object v0, p2

    .line 91
    :cond_0
    return-object v0
.end method

.method public getLocalMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    iget-object v2, p0, Lmacrochip/app/newpl1200/AppConfig;->mContext:Landroid/content/Context;

    .line 99
    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 100
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 101
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public saveData(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # F

    .prologue
    .line 73
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmacrochip/app/newpl1200/AppConfig;->saveData(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public saveData(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 65
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmacrochip/app/newpl1200/AppConfig;->saveData(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public saveData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v1, p0, Lmacrochip/app/newpl1200/AppConfig;->mSharePre:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lmacrochip/app/newpl1200/AppConfig;->mSharePre:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public saveData(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Z

    .prologue
    .line 69
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmacrochip/app/newpl1200/AppConfig;->saveData(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method
