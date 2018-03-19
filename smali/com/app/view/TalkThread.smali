.class Lcom/app/view/TalkThread;
.super Ljava/lang/Object;
.source "PreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BUFFER_FRAME_SIZE:I = 0x800

.field private static final audioFormat:I = 0x2

.field private static final audioSource:I = 0x1

.field private static final channelConfig:I = 0x10

.field private static sampleRate:I

.field private static sendFormat:I


# instance fields
.field LOG:Ljava/lang/String;

.field private audioBufSize:I

.field private audioRecord:Landroid/media/AudioRecord;

.field private bufferRead:I

.field private bufferSize:I

.field private isRecording:Z

.field private samples:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2940
    const/4 v0, 0x0

    sput v0, Lcom/app/view/TalkThread;->sendFormat:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2930
    const-string v0, "Recorder "

    iput-object v0, p0, Lcom/app/view/TalkThread;->LOG:Ljava/lang/String;

    .line 2931
    iput-boolean v1, p0, Lcom/app/view/TalkThread;->isRecording:Z

    .line 2939
    iput v1, p0, Lcom/app/view/TalkThread;->audioBufSize:I

    .line 2944
    iput v1, p0, Lcom/app/view/TalkThread;->bufferRead:I

    .line 2946
    iput v1, p0, Lcom/app/view/TalkThread;->bufferSize:I

    .line 2929
    return-void
.end method


# virtual methods
.method public isRecording()Z
    .locals 1

    .prologue
    .line 2983
    iget-boolean v0, p0, Lcom/app/view/TalkThread;->isRecording:Z

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3002
    iget-object v1, p0, Lcom/app/view/TalkThread;->LOG:Ljava/lang/String;

    const-string v2, "audioRecord startRecording()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    sget v1, Lcom/fh/lib/PlayInfo;->userID:I

    invoke-static {v1}, Lcom/fh/lib/FHSDK;->getTalkUnitSize(I)I

    move-result v1

    iput v1, p0, Lcom/app/view/TalkThread;->bufferSize:I

    .line 3005
    iget v1, p0, Lcom/app/view/TalkThread;->bufferSize:I

    if-gtz v1, :cond_0

    .line 3006
    const/16 v1, 0x800

    iput v1, p0, Lcom/app/view/TalkThread;->bufferSize:I

    .line 3007
    :cond_0
    iget v1, p0, Lcom/app/view/TalkThread;->bufferSize:I

    iget v2, p0, Lcom/app/view/TalkThread;->audioBufSize:I

    if-le v1, v2, :cond_1

    .line 3008
    iget v1, p0, Lcom/app/view/TalkThread;->audioBufSize:I

    iput v1, p0, Lcom/app/view/TalkThread;->bufferSize:I

    .line 3010
    :cond_1
    iget v1, p0, Lcom/app/view/TalkThread;->audioBufSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/app/view/TalkThread;->samples:[B

    .line 3011
    iget-object v1, p0, Lcom/app/view/TalkThread;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 3012
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/app/view/TalkThread;->isRecording:Z

    .line 3019
    sget v1, Lcom/app/view/PreviewView;->talkFormat:I

    sput v1, Lcom/app/view/TalkThread;->sendFormat:I

    .line 3021
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/app/view/TalkThread;->isRecording:Z

    if-nez v1, :cond_3

    .line 3059
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/app/view/TalkThread;->LOG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "stop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3060
    iget-object v1, p0, Lcom/app/view/TalkThread;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 3061
    return-void

    .line 3022
    :cond_3
    iget-object v1, p0, Lcom/app/view/TalkThread;->audioRecord:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/app/view/TalkThread;->samples:[B

    iget v3, p0, Lcom/app/view/TalkThread;->bufferSize:I

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    iput v1, p0, Lcom/app/view/TalkThread;->bufferRead:I

    .line 3023
    iget v1, p0, Lcom/app/view/TalkThread;->bufferRead:I

    if-lez v1, :cond_2

    .line 3024
    iget v1, p0, Lcom/app/view/TalkThread;->bufferRead:I

    new-array v0, v1, [B

    .line 3025
    .local v0, "tempData":[B
    iget-object v1, p0, Lcom/app/view/TalkThread;->samples:[B

    iget v2, p0, Lcom/app/view/TalkThread;->bufferRead:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3026
    iget v1, p0, Lcom/app/view/TalkThread;->bufferRead:I

    sget v2, Lcom/app/view/TalkThread;->sampleRate:I

    sget v3, Lcom/app/view/TalkThread;->sendFormat:I

    invoke-static {v0, v1, v2, v3}, Lcom/fh/lib/FHSDK;->sendTalkData([BIII)Z

    goto :goto_0
.end method

.method public startRecording()V
    .locals 6

    .prologue
    const/16 v3, 0x10

    const/4 v4, 0x2

    .line 2953
    sget v0, Lcom/app/view/PreviewView;->talkSample:I

    if-nez v0, :cond_0

    .line 2954
    const/16 v0, 0x1f40

    sput v0, Lcom/app/view/TalkThread;->sampleRate:I

    .line 2959
    :goto_0
    sget v0, Lcom/app/view/TalkThread;->sampleRate:I

    invoke-static {v0, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/app/view/TalkThread;->audioBufSize:I

    .line 2962
    iget v0, p0, Lcom/app/view/TalkThread;->audioBufSize:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 2963
    iget-object v0, p0, Lcom/app/view/TalkThread;->LOG:Ljava/lang/String;

    const-string v1, "audioBufSize error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    :goto_1
    return-void

    .line 2956
    :cond_0
    const/16 v0, 0x3e80

    sput v0, Lcom/app/view/TalkThread;->sampleRate:I

    goto :goto_0

    .line 2966
    :cond_1
    iget-object v0, p0, Lcom/app/view/TalkThread;->LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "audioBufSize = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/app/view/TalkThread;->audioBufSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    iget-object v0, p0, Lcom/app/view/TalkThread;->audioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_2

    .line 2971
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    sget v2, Lcom/app/view/TalkThread;->sampleRate:I

    .line 2972
    iget v5, p0, Lcom/app/view/TalkThread;->audioBufSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 2971
    iput-object v0, p0, Lcom/app/view/TalkThread;->audioRecord:Landroid/media/AudioRecord;

    .line 2974
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 2979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/app/view/TalkThread;->isRecording:Z

    .line 2980
    return-void
.end method
