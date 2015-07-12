.class Lcom/android/internal/telephony/uicc/SIMRecords$2;
.super Ljava/lang/Object;
.source "SIMRecords.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$2;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1300
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$2;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->LOG_TAG:Ljava/lang/String;

    const-string v2, "fwk delay 60s for loading sms"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const-wide/32 v1, 0xea60

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$2;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$2;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/SIMRecords;->mSmsDataCache:Ljava/util/ArrayList;

    # invokes: Lcom/android/internal/telephony/uicc/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$000(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/util/ArrayList;)V

    .line 1307
    return-void

    .line 1302
    :catch_0
    move-exception v0

    .line 1304
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
