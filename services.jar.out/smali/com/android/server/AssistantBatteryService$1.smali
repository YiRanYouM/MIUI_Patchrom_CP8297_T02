.class Lcom/android/server/AssistantBatteryService$1;
.super Landroid/content/BroadcastReceiver;
.source "AssistantBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssistantBatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AssistantBatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/AssistantBatteryService;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    const-string v2, "plugged"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/AssistantBatteryService;->batteryPlugg:I
    invoke-static {v1, v2}, Lcom/android/server/AssistantBatteryService;->access$002(Lcom/android/server/AssistantBatteryService;I)I

    .line 162
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    const-string v2, "health"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/AssistantBatteryService;->health:I
    invoke-static {v1, v2}, Lcom/android/server/AssistantBatteryService;->access$102(Lcom/android/server/AssistantBatteryService;I)I

    .line 165
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    const-string v2, "status"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/AssistantBatteryService;->batteryStatus:I
    invoke-static {v1, v2}, Lcom/android/server/AssistantBatteryService;->access$202(Lcom/android/server/AssistantBatteryService;I)I

    .line 168
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    const-string v2, "level"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/AssistantBatteryService;->batteryLevel:I
    invoke-static {v1, v2}, Lcom/android/server/AssistantBatteryService;->access$302(Lcom/android/server/AssistantBatteryService;I)I

    .line 171
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->batteryStatus:I
    invoke-static {v2}, Lcom/android/server/AssistantBatteryService;->access$200(Lcom/android/server/AssistantBatteryService;)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->batteryStatus:I
    invoke-static {v2}, Lcom/android/server/AssistantBatteryService;->access$200(Lcom/android/server/AssistantBatteryService;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    const/4 v2, -0x1

    # setter for: Lcom/android/server/AssistantBatteryService;->recordHealth:I
    invoke-static {v1, v2}, Lcom/android/server/AssistantBatteryService;->access$402(Lcom/android/server/AssistantBatteryService;I)I

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mHandler:Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;
    invoke-static {v1}, Lcom/android/server/AssistantBatteryService;->access$500(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/AssistantBatteryService$1;->this$0:Lcom/android/server/AssistantBatteryService;

    # getter for: Lcom/android/server/AssistantBatteryService;->mHandler:Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;
    invoke-static {v1}, Lcom/android/server/AssistantBatteryService;->access$500(Lcom/android/server/AssistantBatteryService;)Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/AssistantBatteryService$AssistantBatteryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    return-void
.end method
