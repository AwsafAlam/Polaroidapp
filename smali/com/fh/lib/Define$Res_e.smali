.class public final enum Lcom/fh/lib/Define$Res_e;
.super Ljava/lang/Enum;
.source "Define.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fh/lib/Define;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Res_e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fh/lib/Define$Res_e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fh/lib/Define$Res_e;

.field public static final enum FHNPEN_ER_1080P:Lcom/fh/lib/Define$Res_e;

.field public static final enum FHNPEN_ER_4CIF:Lcom/fh/lib/Define$Res_e;

.field public static final enum FHNPEN_ER_640x480:Lcom/fh/lib/Define$Res_e;

.field public static final enum FHNPEN_ER_720P:Lcom/fh/lib/Define$Res_e;

.field public static final enum FHNPEN_ER_960H:Lcom/fh/lib/Define$Res_e;

.field public static final enum FHNPEN_ER_960P:Lcom/fh/lib/Define$Res_e;

.field public static final enum FHNPEN_ER_CIF:Lcom/fh/lib/Define$Res_e;

.field public static final enum FHNPEN_ER_D1:Lcom/fh/lib/Define$Res_e;

.field public static final enum FHNPEN_ER_QCIF:Lcom/fh/lib/Define$Res_e;

.field public static final enum FHNPEN_ER_QVGA:Lcom/fh/lib/Define$Res_e;


# instance fields
.field private index:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 147
    new-instance v0, Lcom/fh/lib/Define$Res_e;

    const-string v1, "FHNPEN_ER_QCIF"

    const-string v2, "QCIF"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/fh/lib/Define$Res_e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_QCIF:Lcom/fh/lib/Define$Res_e;

    .line 148
    new-instance v0, Lcom/fh/lib/Define$Res_e;

    const-string v1, "FHNPEN_ER_CIF"

    const-string v2, "CIF"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/fh/lib/Define$Res_e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_CIF:Lcom/fh/lib/Define$Res_e;

    .line 149
    new-instance v0, Lcom/fh/lib/Define$Res_e;

    const-string v1, "FHNPEN_ER_4CIF"

    const-string v2, "4CIF"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/fh/lib/Define$Res_e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_4CIF:Lcom/fh/lib/Define$Res_e;

    .line 150
    new-instance v0, Lcom/fh/lib/Define$Res_e;

    const-string v1, "FHNPEN_ER_D1"

    const-string v2, "D1"

    invoke-direct {v0, v1, v8, v2, v8}, Lcom/fh/lib/Define$Res_e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_D1:Lcom/fh/lib/Define$Res_e;

    .line 151
    new-instance v0, Lcom/fh/lib/Define$Res_e;

    const-string v1, "FHNPEN_ER_640x480"

    const-string v2, "VGA"

    invoke-direct {v0, v1, v9, v2, v9}, Lcom/fh/lib/Define$Res_e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_640x480:Lcom/fh/lib/Define$Res_e;

    .line 152
    new-instance v0, Lcom/fh/lib/Define$Res_e;

    const-string v1, "FHNPEN_ER_QVGA"

    const/4 v2, 0x5

    const-string v3, "QVGA"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fh/lib/Define$Res_e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_QVGA:Lcom/fh/lib/Define$Res_e;

    .line 153
    new-instance v0, Lcom/fh/lib/Define$Res_e;

    const-string v1, "FHNPEN_ER_720P"

    const/4 v2, 0x6

    const-string v3, "720P"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fh/lib/Define$Res_e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_720P:Lcom/fh/lib/Define$Res_e;

    .line 154
    new-instance v0, Lcom/fh/lib/Define$Res_e;

    const-string v1, "FHNPEN_ER_960P"

    const/4 v2, 0x7

    const-string v3, "960P"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fh/lib/Define$Res_e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_960P:Lcom/fh/lib/Define$Res_e;

    .line 155
    new-instance v0, Lcom/fh/lib/Define$Res_e;

    const-string v1, "FHNPEN_ER_1080P"

    const/16 v2, 0x8

    const-string v3, "1080P"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fh/lib/Define$Res_e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_1080P:Lcom/fh/lib/Define$Res_e;

    .line 156
    new-instance v0, Lcom/fh/lib/Define$Res_e;

    const-string v1, "FHNPEN_ER_960H"

    const/16 v2, 0x9

    const-string v3, "960H"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fh/lib/Define$Res_e;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_960H:Lcom/fh/lib/Define$Res_e;

    .line 146
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/fh/lib/Define$Res_e;

    sget-object v1, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_QCIF:Lcom/fh/lib/Define$Res_e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_CIF:Lcom/fh/lib/Define$Res_e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_4CIF:Lcom/fh/lib/Define$Res_e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_D1:Lcom/fh/lib/Define$Res_e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_640x480:Lcom/fh/lib/Define$Res_e;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_QVGA:Lcom/fh/lib/Define$Res_e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_720P:Lcom/fh/lib/Define$Res_e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_960P:Lcom/fh/lib/Define$Res_e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_1080P:Lcom/fh/lib/Define$Res_e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/fh/lib/Define$Res_e;->FHNPEN_ER_960H:Lcom/fh/lib/Define$Res_e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fh/lib/Define$Res_e;->ENUM$VALUES:[Lcom/fh/lib/Define$Res_e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput-object p3, p0, Lcom/fh/lib/Define$Res_e;->name:Ljava/lang/String;

    .line 162
    iput p4, p0, Lcom/fh/lib/Define$Res_e;->index:I

    .line 163
    return-void
.end method

.method public static getNameByIndex(I)Ljava/lang/String;
    .locals 5
    .param p0, "index"    # I

    .prologue
    .line 174
    invoke-static {}, Lcom/fh/lib/Define$Res_e;->values()[Lcom/fh/lib/Define$Res_e;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 179
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 174
    :cond_0
    aget-object v0, v2, v1

    .line 176
    .local v0, "res":Lcom/fh/lib/Define$Res_e;
    iget v4, v0, Lcom/fh/lib/Define$Res_e;->index:I

    if-ne p0, v4, :cond_1

    .line 177
    iget-object v1, v0, Lcom/fh/lib/Define$Res_e;->name:Ljava/lang/String;

    goto :goto_1

    .line 174
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fh/lib/Define$Res_e;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fh/lib/Define$Res_e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fh/lib/Define$Res_e;

    return-object v0
.end method

.method public static values()[Lcom/fh/lib/Define$Res_e;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fh/lib/Define$Res_e;->ENUM$VALUES:[Lcom/fh/lib/Define$Res_e;

    array-length v1, v0

    new-array v2, v1, [Lcom/fh/lib/Define$Res_e;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/fh/lib/Define$Res_e;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/fh/lib/Define$Res_e;->name:Ljava/lang/String;

    return-object v0
.end method
