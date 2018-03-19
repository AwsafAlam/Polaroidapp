.class public Lmacrochip/app/newpl1200/Help2Activity;
.super Landroid/app/Activity;
.source "Help2Activity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmacrochip/app/newpl1200/Help2Activity$MyAdapter;
    }
.end annotation


# static fields
.field private static imgIdArray:[I


# instance fields
.field private btnBack:Landroid/widget/ImageView;

.field private mImageViews:[Landroid/widget/ImageView;

.field private tips:[Landroid/widget/ImageView;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmacrochip/app/newpl1200/Help2Activity;->imgIdArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02000b
        0x7f02000c
        0x7f02000d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lmacrochip/app/newpl1200/Help2Activity;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lmacrochip/app/newpl1200/Help2Activity;->mImageViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method private setImageBackground(I)V
    .locals 3
    .param p1, "selectItems"    # I

    .prologue
    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmacrochip/app/newpl1200/Help2Activity;->tips:[Landroid/widget/ImageView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 194
    return-void

    .line 188
    :cond_0
    if-ne v0, p1, :cond_1

    .line 189
    iget-object v1, p0, Lmacrochip/app/newpl1200/Help2Activity;->tips:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f02004a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 187
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, p0, Lmacrochip/app/newpl1200/Help2Activity;->tips:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f02004b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x400

    const/16 v13, 0xa

    const/4 v12, 0x5

    const/4 v11, -0x2

    const/4 v10, 0x1

    .line 48
    invoke-virtual {p0, v10}, Lmacrochip/app/newpl1200/Help2Activity;->requestWindowFeature(I)Z

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lcom/app/util/MyApplication;->getInstance()Lcom/app/util/MyApplication;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/app/util/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 52
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/Help2Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 53
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/Help2Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 55
    const/high16 v8, 0x7f030000

    invoke-virtual {p0, v8}, Lmacrochip/app/newpl1200/Help2Activity;->setContentView(I)V

    .line 56
    const v8, 0x7f0b0001

    invoke-virtual {p0, v8}, Lmacrochip/app/newpl1200/Help2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 57
    .local v2, "group":Landroid/view/ViewGroup;
    const/high16 v8, 0x7f0b0000

    invoke-virtual {p0, v8}, Lmacrochip/app/newpl1200/Help2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    iput-object v8, p0, Lmacrochip/app/newpl1200/Help2Activity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 58
    const v8, 0x7f0b0002

    invoke-virtual {p0, v8}, Lmacrochip/app/newpl1200/Help2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lmacrochip/app/newpl1200/Help2Activity;->btnBack:Landroid/widget/ImageView;

    .line 59
    iget-object v8, p0, Lmacrochip/app/newpl1200/Help2Activity;->btnBack:Landroid/widget/ImageView;

    new-instance v9, Lmacrochip/app/newpl1200/Help2Activity$1;

    invoke-direct {v9, p0}, Lmacrochip/app/newpl1200/Help2Activity$1;-><init>(Lmacrochip/app/newpl1200/Help2Activity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget-object v8, Lmacrochip/app/newpl1200/Help2Activity;->imgIdArray:[I

    array-length v8, v8

    new-array v8, v8, [Landroid/widget/ImageView;

    iput-object v8, p0, Lmacrochip/app/newpl1200/Help2Activity;->tips:[Landroid/widget/ImageView;

    .line 75
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lmacrochip/app/newpl1200/Help2Activity;->tips:[Landroid/widget/ImageView;

    array-length v8, v8

    if-lt v3, v8, :cond_0

    .line 96
    sget-object v8, Lmacrochip/app/newpl1200/Help2Activity;->imgIdArray:[I

    array-length v8, v8

    new-array v8, v8, [Landroid/widget/ImageView;

    iput-object v8, p0, Lmacrochip/app/newpl1200/Help2Activity;->mImageViews:[Landroid/widget/ImageView;

    .line 97
    const/4 v3, 0x0

    :goto_1
    iget-object v8, p0, Lmacrochip/app/newpl1200/Help2Activity;->mImageViews:[Landroid/widget/ImageView;

    array-length v8, v8

    if-lt v3, v8, :cond_2

    .line 117
    iget-object v8, p0, Lmacrochip/app/newpl1200/Help2Activity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v9, Lmacrochip/app/newpl1200/Help2Activity$MyAdapter;

    invoke-direct {v9, p0}, Lmacrochip/app/newpl1200/Help2Activity$MyAdapter;-><init>(Lmacrochip/app/newpl1200/Help2Activity;)V

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 119
    iget-object v8, p0, Lmacrochip/app/newpl1200/Help2Activity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 121
    iget-object v8, p0, Lmacrochip/app/newpl1200/Help2Activity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v9, p0, Lmacrochip/app/newpl1200/Help2Activity;->mImageViews:[Landroid/widget/ImageView;

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x64

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 123
    return-void

    .line 76
    :cond_0
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    .local v4, "imageView":Landroid/widget/ImageView;
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v8, p0, Lmacrochip/app/newpl1200/Help2Activity;->tips:[Landroid/widget/ImageView;

    aput-object v4, v8, v3

    .line 79
    if-nez v3, :cond_1

    .line 80
    iget-object v8, p0, Lmacrochip/app/newpl1200/Help2Activity;->tips:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    const v9, 0x7f02004a

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 86
    :goto_2
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 87
    invoke-direct {v8, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 86
    invoke-direct {v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .local v6, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 89
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 91
    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    .end local v6    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v8, p0, Lmacrochip/app/newpl1200/Help2Activity;->tips:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    const v9, 0x7f02004b

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 98
    .end local v4    # "imageView":Landroid/widget/ImageView;
    :cond_2
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 99
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    iget-object v8, p0, Lmacrochip/app/newpl1200/Help2Activity;->mImageViews:[Landroid/widget/ImageView;

    aput-object v4, v8, v3

    .line 103
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 105
    .local v7, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 106
    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 107
    iput-boolean v10, v7, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 108
    invoke-virtual {p0}, Lmacrochip/app/newpl1200/Help2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v9, Lmacrochip/app/newpl1200/Help2Activity;->imgIdArray:[I

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 109
    .local v5, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    invoke-static {v5, v8, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 110
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lmacrochip/app/newpl1200/Help2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v0, v8, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 111
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 170
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 175
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lmacrochip/app/newpl1200/Help2Activity;->mImageViews:[Landroid/widget/ImageView;

    array-length v0, v0

    rem-int v0, p1, v0

    invoke-direct {p0, v0}, Lmacrochip/app/newpl1200/Help2Activity;->setImageBackground(I)V

    .line 180
    return-void
.end method
