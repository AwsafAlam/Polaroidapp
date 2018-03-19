.class Lcom/app/view/PreviewView$14;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/view/PreviewView;


# direct methods
.method constructor <init>(Lcom/app/view/PreviewView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    .line 1251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0xff

    .line 1254
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    iget-object v5, v5, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1256
    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1258
    .local v4, "myInputView":Landroid/view/View;
    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    const v5, 0x7f0b0021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    invoke-static {v6, v5}, Lcom/app/view/PreviewView;->access$26(Lcom/app/view/PreviewView;Landroid/widget/SeekBar;)V

    .line 1259
    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    const v5, 0x7f0b001d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    invoke-static {v6, v5}, Lcom/app/view/PreviewView;->access$27(Lcom/app/view/PreviewView;Landroid/widget/SeekBar;)V

    .line 1260
    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    const v5, 0x7f0b001f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    invoke-static {v6, v5}, Lcom/app/view/PreviewView;->access$28(Lcom/app/view/PreviewView;Landroid/widget/SeekBar;)V

    .line 1261
    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    const v5, 0x7f0b0020

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    invoke-static {v6, v5}, Lcom/app/view/PreviewView;->access$29(Lcom/app/view/PreviewView;Landroid/widget/SeekBar;)V

    .line 1263
    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    const v5, 0x7f0b0022

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v6, v5}, Lcom/app/view/PreviewView;->access$30(Lcom/app/view/PreviewView;Landroid/widget/TextView;)V

    .line 1264
    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    const v5, 0x7f0b001e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v6, v5}, Lcom/app/view/PreviewView;->access$31(Lcom/app/view/PreviewView;Landroid/widget/TextView;)V

    .line 1265
    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    const v5, 0x7f0b0023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v6, v5}, Lcom/app/view/PreviewView;->access$32(Lcom/app/view/PreviewView;Landroid/widget/TextView;)V

    .line 1266
    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    const v5, 0x7f0b0024

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v6, v5}, Lcom/app/view/PreviewView;->access$33(Lcom/app/view/PreviewView;Landroid/widget/TextView;)V

    .line 1269
    sget v5, Lcom/fh/lib/PlayInfo;->userID:I

    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/fh/lib/FHSDK;->getVideoBCSS(ILcom/fh/lib/Define$BCSS;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1275
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$35(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v5

    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v6

    iget v6, v6, Lcom/fh/lib/Define$BCSS;->brightness:I

    iput v6, v5, Lcom/fh/lib/Define$BCSS;->brightness:I

    .line 1276
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$35(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v5

    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v6

    iget v6, v6, Lcom/fh/lib/Define$BCSS;->contrast:I

    iput v6, v5, Lcom/fh/lib/Define$BCSS;->contrast:I

    .line 1277
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$35(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v5

    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v6

    iget v6, v6, Lcom/fh/lib/Define$BCSS;->saturation:I

    iput v6, v5, Lcom/fh/lib/Define$BCSS;->saturation:I

    .line 1278
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$35(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v5

    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v6

    iget v6, v6, Lcom/fh/lib/Define$BCSS;->sharpness:I

    iput v6, v5, Lcom/fh/lib/Define$BCSS;->sharpness:I

    .line 1280
    sget v5, Lcom/fh/lib/PlayInfo;->userID:I

    invoke-static {v5}, Lcom/fh/lib/FHSDK;->getDeviceFlag(I)I

    move-result v2

    .line 1282
    .local v2, "devFlag":I
    invoke-static {}, Lcom/app/view/PreviewView;->access$36()I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 1284
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$37(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1285
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$38(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1286
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$39(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1287
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$40(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1297
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$37(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v6

    iget v6, v6, Lcom/fh/lib/Define$BCSS;->brightness:I

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1298
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$37(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$43(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1299
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$44(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v7}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v7

    iget v7, v7, Lcom/fh/lib/Define$BCSS;->brightness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$38(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v6

    iget v6, v6, Lcom/fh/lib/Define$BCSS;->contrast:I

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1302
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$38(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$45(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1303
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$46(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v7}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v7

    iget v7, v7, Lcom/fh/lib/Define$BCSS;->contrast:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$39(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v6

    iget v6, v6, Lcom/fh/lib/Define$BCSS;->saturation:I

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1306
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$39(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$47(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1307
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$48(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v7}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v7

    iget v7, v7, Lcom/fh/lib/Define$BCSS;->saturation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$40(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v6

    iget v6, v6, Lcom/fh/lib/Define$BCSS;->sharpness:I

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1310
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$40(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v6}, Lcom/app/view/PreviewView;->access$49(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1311
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$50(Lcom/app/view/PreviewView;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v7}, Lcom/app/view/PreviewView;->access$34(Lcom/app/view/PreviewView;)Lcom/fh/lib/Define$BCSS;

    move-result-object v7

    iget v7, v7, Lcom/fh/lib/Define$BCSS;->sharpness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1318
    .end local v2    # "devFlag":I
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    iget-object v5, v5, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1319
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v5, "\u8272\u951f\u7ede\u7889\u62f7\u951f\u65a4\u62f7"

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1320
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "\u951f\u65a4\u62f7\u951f\u65a4\u62f7"

    iget-object v7, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v7}, Lcom/app/view/PreviewView;->access$51(Lcom/app/view/PreviewView;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1321
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "\u53d6\u951f\u65a4\u62f7"

    iget-object v7, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v7}, Lcom/app/view/PreviewView;->access$52(Lcom/app/view/PreviewView;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1322
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1323
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1325
    return-void

    .line 1289
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v2    # "devFlag":I
    :cond_1
    invoke-static {}, Lcom/app/view/PreviewView;->access$41()I

    move-result v5

    if-eq v5, v2, :cond_2

    invoke-static {}, Lcom/app/view/PreviewView;->access$42()I

    move-result v5

    if-ne v5, v2, :cond_0

    .line 1291
    :cond_2
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$37(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1292
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$38(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1293
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$39(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1294
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v5}, Lcom/app/view/PreviewView;->access$40(Lcom/app/view/PreviewView;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setMax(I)V

    goto/16 :goto_0

    .line 1315
    .end local v2    # "devFlag":I
    :cond_3
    iget-object v5, p0, Lcom/app/view/PreviewView$14;->this$0:Lcom/app/view/PreviewView;

    iget-object v5, v5, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    const-string v6, "\u951f\u65a4\u62f7\u53d6\u5931\u951f\u65a4\u62f7"

    invoke-static {v5, v6}, Lcom/app/util/ActivtyUtil;->openToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
