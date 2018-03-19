.class public Lmacrochip/app/newpl1200/MoreCfg;
.super Landroid/app/Activity;
.source "MoreCfg.java"


# static fields
.field private static final DecodeType:[Ljava/lang/String;

.field static FILE:Ljava/lang/String; = null

.field private static final FormatArray:[Ljava/lang/String;

.field private static final FrameCacheNum:[Ljava/lang/String;

.field private static final MDArray:[Ljava/lang/String;

.field private static final ModeArray:[Ljava/lang/String;

.field private static final SampleRateArray:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MoreCfgActivity"


# instance fields
.field listItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private listItemListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAudioFormat:I

.field private mDecodeType:I

.field private mFrameCacheNum:I

.field private mMDStatus:I

.field private mSampleRate:I

.field private mTransMode:I

.field private myList:Landroid/widget/ListView;

.field private simpleAdapter:Landroid/widget/SimpleAdapter;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "TCP"

    aput-object v1, v0, v3

    const-string v1, "UDP"

    aput-object v1, v0, v4

    sput-object v0, Lmacrochip/app/newpl1200/MoreCfg;->ModeArray:[Ljava/lang/String;

    .line 33
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u951f\u622a\u618b\u62f7"

    aput-object v1, v0, v3

    const-string v1, "\u951f\u65a4\u62f7\u951f\u65a4\u62f7"

    aput-object v1, v0, v4

    sput-object v0, Lmacrochip/app/newpl1200/MoreCfg;->MDArray:[Ljava/lang/String;

    .line 34
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "8000"

    aput-object v1, v0, v3

    const-string v1, "16000"

    aput-object v1, v0, v4

    sput-object v0, Lmacrochip/app/newpl1200/MoreCfg;->SampleRateArray:[Ljava/lang/String;

    .line 35
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "PCM"

    aput-object v1, v0, v3

    const-string v1, "G711-ALAW"

    aput-object v1, v0, v4

    const-string v1, "G711-ULAW"

    aput-object v1, v0, v5

    sput-object v0, Lmacrochip/app/newpl1200/MoreCfg;->FormatArray:[Ljava/lang/String;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "10"

    aput-object v1, v0, v4

    const-string v1, "20"

    aput-object v1, v0, v5

    const-string v1, "30"

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "40"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "50"

    aput-object v2, v0, v1

    sput-object v0, Lmacrochip/app/newpl1200/MoreCfg;->FrameCacheNum:[Ljava/lang/String;

    .line 37
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u951f\u65a4\u62f7\u951f\u65a4\u62f7\u951f?"

    aput-object v1, v0, v3

    const-string v1, "\u786c\u951f\u65a4\u62f7\u951f\u65a4\u62f7"

    aput-object v1, v0, v4

    sput-object v0, Lmacrochip/app/newpl1200/MoreCfg;->DecodeType:[Ljava/lang/String;

    .line 38
    const-string v0, "transInfo"

    sput-object v0, Lmacrochip/app/newpl1200/MoreCfg;->FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-object v1, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    .line 41
    iput-object v1, p0, Lmacrochip/app/newpl1200/MoreCfg;->myList:Landroid/widget/ListView;

    .line 42
    iput v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mTransMode:I

    .line 43
    iput v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mMDStatus:I

    .line 44
    iput v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mSampleRate:I

    .line 45
    iput v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mAudioFormat:I

    .line 46
    iput v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mFrameCacheNum:I

    .line 47
    iput v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mDecodeType:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->listItem:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Lmacrochip/app/newpl1200/MoreCfg$1;

    invoke-direct {v0, p0}, Lmacrochip/app/newpl1200/MoreCfg$1;-><init>(Lmacrochip/app/newpl1200/MoreCfg;)V

    iput-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->listItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lmacrochip/app/newpl1200/MoreCfg;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->myList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lmacrochip/app/newpl1200/MoreCfg;->ModeArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lmacrochip/app/newpl1200/MoreCfg;I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lmacrochip/app/newpl1200/MoreCfg;->mSampleRate:I

    return-void
.end method

.method static synthetic access$11()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lmacrochip/app/newpl1200/MoreCfg;->FormatArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lmacrochip/app/newpl1200/MoreCfg;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mAudioFormat:I

    return v0
.end method

.method static synthetic access$13(Lmacrochip/app/newpl1200/MoreCfg;I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lmacrochip/app/newpl1200/MoreCfg;->mAudioFormat:I

    return-void
.end method

.method static synthetic access$14()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lmacrochip/app/newpl1200/MoreCfg;->FrameCacheNum:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lmacrochip/app/newpl1200/MoreCfg;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mFrameCacheNum:I

    return v0
.end method

.method static synthetic access$16(Lmacrochip/app/newpl1200/MoreCfg;I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lmacrochip/app/newpl1200/MoreCfg;->mFrameCacheNum:I

    return-void
.end method

.method static synthetic access$17()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lmacrochip/app/newpl1200/MoreCfg;->DecodeType:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lmacrochip/app/newpl1200/MoreCfg;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mDecodeType:I

    return v0
.end method

.method static synthetic access$19(Lmacrochip/app/newpl1200/MoreCfg;I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lmacrochip/app/newpl1200/MoreCfg;->mDecodeType:I

    return-void
.end method

.method static synthetic access$2(Lmacrochip/app/newpl1200/MoreCfg;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mTransMode:I

    return v0
.end method

.method static synthetic access$3(Lmacrochip/app/newpl1200/MoreCfg;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lmacrochip/app/newpl1200/MoreCfg;->mTransMode:I

    return-void
.end method

.method static synthetic access$4(Lmacrochip/app/newpl1200/MoreCfg;)Landroid/widget/SimpleAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->simpleAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$5()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lmacrochip/app/newpl1200/MoreCfg;->MDArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lmacrochip/app/newpl1200/MoreCfg;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mMDStatus:I

    return v0
.end method

.method static synthetic access$7(Lmacrochip/app/newpl1200/MoreCfg;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lmacrochip/app/newpl1200/MoreCfg;->mMDStatus:I

    return-void
.end method

.method static synthetic access$8()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lmacrochip/app/newpl1200/MoreCfg;->SampleRateArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lmacrochip/app/newpl1200/MoreCfg;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mSampleRate:I

    return v0
.end method


# virtual methods
.method public addListItem()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const v3, 0x7f020001

    .line 125
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemTitle"

    const-string v1, "\u9884\u951f\u65a4\u62f7\u951f\u65a4\u62f7\u951f\u65a4\u62f7\u6a21\u5f0f"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v0, "ItemChose"

    sget-object v1, Lmacrochip/app/newpl1200/MoreCfg;->ModeArray:[Ljava/lang/String;

    iget v2, p0, Lmacrochip/app/newpl1200/MoreCfg;->mTransMode:I

    aget-object v1, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "ItemImage"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 132
    .restart local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemTitle"

    const-string v1, "\u951f\u72e1\u8bb9\u62f7\u951f\u65a4\u62f7\u951f\u65a4\u62f7\u951f\u65a4\u62f7\u951f?"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v0, "ItemChose"

    sget-object v1, Lmacrochip/app/newpl1200/MoreCfg;->MDArray:[Ljava/lang/String;

    iget v2, p0, Lmacrochip/app/newpl1200/MoreCfg;->mMDStatus:I

    aget-object v1, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "ItemImage"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 138
    .restart local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemTitle"

    const-string v1, "\u951f\u65a4\u62f7\u951f\u65a4\u62f7\u951f\u7686\u65a4\u62f7\u951f\u65a4\u62f7\u951f\u65a4\u62f7\u951f\u65a4\u62f7"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "ItemChose"

    sget-object v1, Lmacrochip/app/newpl1200/MoreCfg;->SampleRateArray:[Ljava/lang/String;

    iget v2, p0, Lmacrochip/app/newpl1200/MoreCfg;->mSampleRate:I

    aget-object v1, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "ItemImage"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 144
    .restart local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemTitle"

    const-string v1, "\u951f\u65a4\u62f7\u951f\u65a4\u62f7\u951f\u7686\u65a4\u62f7\u951f\u65a4\u62f7\u951f\u65a4\u62f7\u951f\u7ede?"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "ItemChose"

    sget-object v1, Lmacrochip/app/newpl1200/MoreCfg;->FormatArray:[Ljava/lang/String;

    iget v2, p0, Lmacrochip/app/newpl1200/MoreCfg;->mAudioFormat:I

    aget-object v1, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "ItemImage"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 150
    .restart local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemTitle"

    const-string v1, "\u951f\u65a4\u62f7\u9891\u951f\u65a4\u62f7\u951f\u65a4\u62f7\u5e27\u951f\u65a4\u62f7"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "ItemChose"

    sget-object v1, Lmacrochip/app/newpl1200/MoreCfg;->FrameCacheNum:[Ljava/lang/String;

    iget v2, p0, Lmacrochip/app/newpl1200/MoreCfg;->mFrameCacheNum:I

    aget-object v1, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "ItemImage"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 156
    .restart local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "ItemTitle"

    const-string v1, "\u951f\u65a4\u62f7\u951f\u65a4\u62f7\u951f\u65a4\u62f7\u951f\u65a4\u62f7"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "ItemChose"

    sget-object v1, Lmacrochip/app/newpl1200/MoreCfg;->DecodeType:[Ljava/lang/String;

    iget v2, p0, Lmacrochip/app/newpl1200/MoreCfg;->mDecodeType:I

    aget-object v1, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "ItemImage"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->listItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lmacrochip/app/newpl1200/MoreCfg;->listItem:Ljava/util/ArrayList;

    const v3, 0x7f03001d

    .line 163
    new-array v4, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "ItemTitle"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "ItemChose"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "ItemImage"

    aput-object v5, v4, v1

    .line 164
    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 162
    iput-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->simpleAdapter:Landroid/widget/SimpleAdapter;

    .line 165
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->myList:Landroid/widget/ListView;

    iget-object v1, p0, Lmacrochip/app/newpl1200/MoreCfg;->simpleAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    return-void

    .line 164
    nop

    :array_0
    .array-data 4
        0x7f0b006a
        0x7f0b0049
        0x7f0b0030
    .end array-data
.end method

.method public getAudioFormat(Landroid/content/Context;)I
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "mAudioFormat":I
    const/4 v1, 0x0

    .line 319
    .local v1, "sp":Landroid/content/SharedPreferences;
    sget-object v2, Lmacrochip/app/newpl1200/MoreCfg;->FILE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_0

    .line 322
    const-string v2, ""

    const-string v3, "mAudioFormat"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 324
    const/4 v0, 0x0

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 328
    :cond_1
    const-string v2, "mAudioFormat"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getDecodeType(Landroid/content/Context;)I
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "mDecodeType":I
    const/4 v1, 0x0

    .line 373
    .local v1, "sp":Landroid/content/SharedPreferences;
    sget-object v2, Lmacrochip/app/newpl1200/MoreCfg;->FILE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 374
    if-eqz v1, :cond_0

    .line 376
    const-string v2, ""

    const-string v3, "mDecodeType"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 378
    const/4 v0, 0x0

    .line 385
    :cond_0
    :goto_0
    return v0

    .line 382
    :cond_1
    const-string v2, "mDecodeType"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getFrameCacheNum(Landroid/content/Context;)I
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "mFrameCacheNum":I
    const/4 v1, 0x0

    .line 355
    .local v1, "sp":Landroid/content/SharedPreferences;
    sget-object v2, Lmacrochip/app/newpl1200/MoreCfg;->FILE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_0

    .line 358
    const-string v2, ""

    const-string v3, "mFrameCacheNum"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 360
    const/4 v0, 0x0

    .line 367
    :cond_0
    :goto_0
    mul-int/lit8 v2, v0, 0xa

    return v2

    .line 364
    :cond_1
    const-string v2, "mFrameCacheNum"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getSampleRate(Landroid/content/Context;)I
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 300
    const/4 v0, 0x1

    .line 301
    .local v0, "mSampleRate":I
    const/4 v1, 0x0

    .line 302
    .local v1, "sp":Landroid/content/SharedPreferences;
    sget-object v2, Lmacrochip/app/newpl1200/MoreCfg;->FILE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 303
    if-eqz v1, :cond_0

    .line 305
    const-string v2, ""

    const-string v3, "mSampleRate"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 307
    const/4 v0, 0x1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    const-string v2, "mSampleRate"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getTransMode(Landroid/content/Context;)I
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 334
    const/4 v0, 0x1

    .line 335
    .local v0, "mTransMode":I
    const/4 v1, 0x0

    .line 336
    .local v1, "sp":Landroid/content/SharedPreferences;
    sget-object v2, Lmacrochip/app/newpl1200/MoreCfg;->FILE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 337
    if-eqz v1, :cond_0

    .line 339
    const-string v2, ""

    const-string v3, "transMode"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 341
    const/4 v0, 0x0

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 345
    :cond_1
    const-string v2, "transMode"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 59
    sget-object v0, Lmacrochip/app/newpl1200/MoreCfg;->FILE:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lmacrochip/app/newpl1200/MoreCfg;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    .line 60
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 63
    const-string v0, ""

    iget-object v1, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    const-string v2, "mFrameCacheNum"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 65
    iput v4, p0, Lmacrochip/app/newpl1200/MoreCfg;->mFrameCacheNum:I

    .line 72
    :goto_0
    const-string v0, ""

    iget-object v1, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    const-string v2, "transMode"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 74
    iput v4, p0, Lmacrochip/app/newpl1200/MoreCfg;->mTransMode:I

    .line 81
    :goto_1
    const-string v0, ""

    iget-object v1, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    const-string v2, "MDStatus"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 83
    iput v4, p0, Lmacrochip/app/newpl1200/MoreCfg;->mMDStatus:I

    .line 90
    :goto_2
    const-string v0, ""

    iget-object v1, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    const-string v2, "mSampleRate"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mSampleRate:I

    .line 99
    :goto_3
    const-string v0, ""

    iget-object v1, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    const-string v2, "mAudioFormat"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 101
    iput v4, p0, Lmacrochip/app/newpl1200/MoreCfg;->mAudioFormat:I

    .line 107
    :goto_4
    const-string v0, ""

    iget-object v1, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    const-string v2, "mDecodeType"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 109
    iput v4, p0, Lmacrochip/app/newpl1200/MoreCfg;->mDecodeType:I

    .line 118
    :cond_0
    :goto_5
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/MoreCfg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->myList:Landroid/widget/ListView;

    .line 119
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->myList:Landroid/widget/ListView;

    iget-object v1, p0, Lmacrochip/app/newpl1200/MoreCfg;->listItemListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 120
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/MoreCfg;->addListItem()V

    .line 121
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mFrameCacheNum"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mFrameCacheNum:I

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    const-string v1, "transMode"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mTransMode:I

    goto :goto_1

    .line 87
    :cond_3
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    const-string v1, "MDStatus"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mMDStatus:I

    goto :goto_2

    .line 96
    :cond_4
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mSampleRate"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mSampleRate:I

    goto :goto_3

    .line 105
    :cond_5
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mAudioFormat"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mAudioFormat:I

    goto :goto_4

    .line 113
    :cond_6
    iget-object v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    const-string v1, "mDecodeType"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmacrochip/app/newpl1200/MoreCfg;->mDecodeType:I

    goto :goto_5
.end method

.method public isSupportMediaCodecHardDecoder()Z
    .locals 10

    .prologue
    .line 388
    const/4 v5, 0x0

    .line 390
    .local v5, "isHardcode":Z
    new-instance v2, Ljava/io/File;

    const-string v9, "/system/etc/media_codecs.xml"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 393
    .local v3, "inFile":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "inFile":Ljava/io/InputStream;
    .local v4, "inFile":Ljava/io/InputStream;
    move-object v3, v4

    .line 398
    .end local v4    # "inFile":Ljava/io/InputStream;
    .restart local v3    # "inFile":Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_0

    .line 401
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 402
    .local v6, "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 403
    .local v8, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v9, "UTF-8"

    invoke-interface {v8, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 404
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 405
    .local v1, "eventType":I
    :goto_1
    const/4 v9, 0x1

    if-ne v1, v9, :cond_1

    .line 427
    .end local v1    # "eventType":I
    .end local v6    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_2
    return v5

    .line 406
    .restart local v1    # "eventType":I
    .restart local v6    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v8    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 407
    .local v7, "tagName":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 421
    :cond_2
    :goto_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 409
    :pswitch_0
    const-string v9, "MediaCodec"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 410
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "componentName":Ljava/lang/String;
    const-string v9, "OMX."

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 414
    const-string v9, "OMX.google."

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    if-nez v9, :cond_2

    .line 416
    const/4 v5, 0x1

    goto :goto_3

    .line 423
    .end local v0    # "componentName":Ljava/lang/String;
    .end local v1    # "eventType":I
    .end local v6    # "pullFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v9

    goto :goto_2

    .line 394
    :catch_1
    move-exception v9

    goto :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const-string v0, "MoreCfgActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/MoreCfg;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/MoreCfg;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lmacrochip/app/newpl1200/MoreCfg;->setContentView(I)V

    .line 54
    invoke-static {}, Lcom/app/util/MyApplication;->getInstance()Lcom/app/util/MyApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/app/util/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 56
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/MoreCfg;->initView()V

    .line 57
    return-void
.end method

.method public rememberTheData()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 169
    sget-object v1, Lmacrochip/app/newpl1200/MoreCfg;->FILE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmacrochip/app/newpl1200/MoreCfg;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    .line 171
    :cond_0
    iget-object v1, p0, Lmacrochip/app/newpl1200/MoreCfg;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "transMode"

    iget v2, p0, Lmacrochip/app/newpl1200/MoreCfg;->mTransMode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v1, "MDStatus"

    iget v2, p0, Lmacrochip/app/newpl1200/MoreCfg;->mMDStatus:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    const-string v1, "mSampleRate"

    iget v2, p0, Lmacrochip/app/newpl1200/MoreCfg;->mSampleRate:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    const-string v1, "mAudioFormat"

    iget v2, p0, Lmacrochip/app/newpl1200/MoreCfg;->mAudioFormat:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    const-string v1, "mFrameCacheNum"

    iget v2, p0, Lmacrochip/app/newpl1200/MoreCfg;->mFrameCacheNum:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    const-string v1, "mDecodeType"

    iget v2, p0, Lmacrochip/app/newpl1200/MoreCfg;->mDecodeType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    return-void
.end method
