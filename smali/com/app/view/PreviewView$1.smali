.class Lcom/app/view/PreviewView$1;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Lcom/fh/lib/Define$CbDataInterface;


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
    iput-object p1, p0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cb_data(I[BI)V
    .locals 16
    .param p1, "type"    # I
    .param p2, "data"    # [B
    .param p3, "len"    # I

    .prologue
    .line 830
    packed-switch p1, :pswitch_data_0

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 834
    :pswitch_0
    new-instance v6, Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v6, v0, v14, v1}, Ljava/lang/String;-><init>([BII)V

    .line 836
    .local v6, "filePath":Ljava/lang/String;
    const-string v14, "/"

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 837
    .local v9, "m":[Ljava/lang/String;
    array-length v14, v9

    add-int/lit8 v14, v14, -0x1

    aget-object v5, v9, v14

    .line 841
    .local v5, "fileName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 843
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    move-object v7, v8

    .line 848
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :goto_1
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 850
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$0(Lcom/app/view/PreviewView;)Lcom/app/util/WLANCfg;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$0(Lcom/app/view/PreviewView;)Lcom/app/util/WLANCfg;

    move-result-object v14

    invoke-virtual {v14}, Lcom/app/util/WLANCfg;->getSSID()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$0(Lcom/app/view/PreviewView;)Lcom/app/util/WLANCfg;

    move-result-object v14

    invoke-virtual {v14}, Lcom/app/util/WLANCfg;->getSSID()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DFD"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$0(Lcom/app/view/PreviewView;)Lcom/app/util/WLANCfg;

    move-result-object v14

    invoke-virtual {v14}, Lcom/app/util/WLANCfg;->getSSID()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ZC"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 853
    :cond_1
    const/16 v14, 0x500

    const/16 v15, 0x400

    invoke-static {v2, v14, v15}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 854
    .local v11, "resizeBmp":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    iget-object v14, v14, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-static {v14, v5, v11}, Lcom/app/view/PreviewView;->saveImageToGallery(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 861
    .end local v11    # "resizeBmp":Landroid/graphics/Bitmap;
    :goto_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 862
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v14, "filePath"

    invoke-virtual {v3, v14, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$1(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 864
    .local v10, "msg":Landroid/os/Message;
    const/16 v14, 0x7d1

    iput v14, v10, Landroid/os/Message;->what:I

    .line 865
    invoke-virtual {v10, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$1(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 844
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v10    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v4

    .line 846
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 858
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    iget-object v14, v14, Lcom/app/view/PreviewView;->mContext:Landroid/content/Context;

    invoke-static {v14, v5, v2}, Lcom/app/view/PreviewView;->saveImageToGallery(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 878
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "m":[Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$1(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 879
    .restart local v10    # "msg":Landroid/os/Message;
    const/16 v14, 0x7d2

    iput v14, v10, Landroid/os/Message;->what:I

    .line 880
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$1(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 886
    .end local v10    # "msg":Landroid/os/Message;
    :pswitch_2
    const/4 v12, 0x0

    .line 888
    .local v12, "s":Ljava/lang/String;
    :try_start_1
    new-instance v13, Ljava/lang/String;

    const-string v14, "GB2312"

    move-object/from16 v0, p2

    invoke-direct {v13, v0, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v12    # "s":Ljava/lang/String;
    .local v13, "s":Ljava/lang/String;
    move-object v12, v13

    .line 895
    .end local v13    # "s":Ljava/lang/String;
    .restart local v12    # "s":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$1(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 896
    .restart local v10    # "msg":Landroid/os/Message;
    const/4 v14, 0x3

    iput v14, v10, Landroid/os/Message;->what:I

    .line 897
    iput-object v12, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 898
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$1(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 902
    .end local v10    # "msg":Landroid/os/Message;
    .end local v12    # "s":Ljava/lang/String;
    :pswitch_3
    sget v14, Lcom/fh/lib/PlayInfo;->playType:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_0

    .line 904
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$2(Lcom/app/view/PreviewView;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 906
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$1(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 907
    .restart local v10    # "msg":Landroid/os/Message;
    const/4 v14, 0x1

    iput v14, v10, Landroid/os/Message;->what:I

    .line 908
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$1(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 913
    .end local v10    # "msg":Landroid/os/Message;
    :cond_3
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$1(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 914
    .restart local v10    # "msg":Landroid/os/Message;
    const/16 v14, 0x7d3

    iput v14, v10, Landroid/os/Message;->what:I

    .line 915
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$1(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 889
    .end local v10    # "msg":Landroid/os/Message;
    .restart local v12    # "s":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 891
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 920
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v12    # "s":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$1(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 921
    .restart local v10    # "msg":Landroid/os/Message;
    const/16 v14, 0x7d4

    iput v14, v10, Landroid/os/Message;->what:I

    .line 922
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/app/view/PreviewView$1;->this$0:Lcom/app/view/PreviewView;

    invoke-static {v14}, Lcom/app/view/PreviewView;->access$1(Lcom/app/view/PreviewView;)Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
