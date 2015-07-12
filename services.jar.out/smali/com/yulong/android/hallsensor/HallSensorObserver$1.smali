.class Lcom/yulong/android/hallsensor/HallSensorObserver$1;
.super Landroid/os/Handler;
.source "HallSensorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulong/android/hallsensor/HallSensorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;


# direct methods
.method constructor <init>(Lcom/yulong/android/hallsensor/HallSensorObserver;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 254
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 418
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 419
    return-void

    .line 257
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "yulong.intent.action.HallSensor"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    const-string v3, "state"

    iget-object v4, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mHallSensorState:I
    invoke-static {v4}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$000(Lcom/yulong/android/hallsensor/HallSensorObserver;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    const-string v3, "name"

    const-string v4, "hall"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendHallSensorIntent + state is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mHallSensorState:I
    invoke-static {v5}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$000(Lcom/yulong/android/hallsensor/HallSensorObserver;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  name is hall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$200(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 274
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mHallSensorState:I
    invoke-static {v3}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$000(Lcom/yulong/android/hallsensor/HallSensorObserver;)I

    move-result v3

    if-nez v3, :cond_2

    .line 277
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v3, "/sys/class/touchscreen/touchscreen_dev/mode"

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 278
    .local v1, "file":Ljava/io/FileWriter;
    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->recordGloveState:I
    invoke-static {v3}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$300(Lcom/yulong/android/hallsensor/HallSensorObserver;)I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "normal"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 281
    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_HALLSENSOR_STATE_AWAY recordGloveState is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->recordGloveState:I
    invoke-static {v5}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$300(Lcom/yulong/android/hallsensor/HallSensorObserver;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 285
    .end local v1    # "file":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 278
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/FileWriter;
    :cond_1
    :try_start_1
    const-string v3, "glove"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 290
    .end local v1    # "file":Ljava/io/FileWriter;
    :cond_2
    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mHallSensorState:I
    invoke-static {v3}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$000(Lcom/yulong/android/hallsensor/HallSensorObserver;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 293
    :try_start_2
    new-instance v1, Ljava/io/FileWriter;

    const-string v3, "/sys/class/touchscreen/touchscreen_dev/mode"

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 294
    .restart local v1    # "file":Ljava/io/FileWriter;
    const-string v3, "window"

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 301
    .end local v1    # "file":Ljava/io/FileWriter;
    :goto_2
    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    iget-object v4, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$200(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "glove_state"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->recordGloveState:I
    invoke-static {v3, v4}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$302(Lcom/yulong/android/hallsensor/HallSensorObserver;I)I

    .line 303
    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_HALLSENSOR_STATE_NEAR recordGloveState is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->recordGloveState:I
    invoke-static {v5}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$300(Lcom/yulong/android/hallsensor/HallSensorObserver;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 296
    :catch_1
    move-exception v0

    .line 298
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 384
    .end local v0    # "e":Ljava/io/IOException;
    :pswitch_3
    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mBootCompleted:Z
    invoke-static {v3}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$400(Lcom/yulong/android/hallsensor/HallSensorObserver;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$500(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/os/PowerManager;

    move-result-object v3

    if-nez v3, :cond_3

    .line 387
    iget-object v4, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$200(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/content/Context;

    move-result-object v3

    const-string v5, "power"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    # setter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v4, v3}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$502(Lcom/yulong/android/hallsensor/HallSensorObserver;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    .line 392
    :cond_3
    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$500(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 393
    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Hallsensor wake up "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v3, p0, Lcom/yulong/android/hallsensor/HallSensorObserver$1;->this$0:Lcom/yulong/android/hallsensor/HallSensorObserver;

    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$500(Lcom/yulong/android/hallsensor/HallSensorObserver;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 410
    # getter for: Lcom/yulong/android/hallsensor/HallSensorObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/yulong/android/hallsensor/HallSensorObserver;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, " Hallsensor  userActivity "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
