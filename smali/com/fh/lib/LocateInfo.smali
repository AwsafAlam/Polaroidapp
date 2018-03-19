.class public Lcom/fh/lib/LocateInfo;
.super Ljava/lang/Object;
.source "LocateInfo.java"


# static fields
.field public static ip:Ljava/lang/String;

.field public static port:I

.field public static userName:Ljava/lang/String;

.field public static userPwd:Ljava/lang/String;

.field public static wifiName:Ljava/lang/String;

.field public static wifiPwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "12345678"

    sput-object v0, Lcom/fh/lib/LocateInfo;->wifiPwd:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
