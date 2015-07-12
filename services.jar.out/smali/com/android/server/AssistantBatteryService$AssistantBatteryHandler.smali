.class final Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;
.super Landroid/os/Handler;
.source "AssistantBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssistantBatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AssistantBatteryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AssistantBatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/AssistantBatteryService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;->this$0:Lcom/android/server/AssistantBatteryService;

    .line 226
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 227
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 241
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;->this$0:Lcom/android/server/AssistantBatteryService;

    # invokes: Lcom/android/server/AssistantBatteryService;->toastIfLowPower()V
    invoke-static {v0}, Lcom/android/server/AssistantBatteryService;->access$900(Lcom/android/server/AssistantBatteryService;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;->this$0:Lcom/android/server/AssistantBatteryService;

    # invokes: Lcom/android/server/AssistantBatteryService;->abnormalBatteryUpdate()V
    invoke-static {v0}, Lcom/android/server/AssistantBatteryService;->access$1000(Lcom/android/server/AssistantBatteryService;)V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
