.class Lcom/android/internal/policy/impl/PhoneWindowManager$28;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 6259
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 6261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6262
    .local v0, "action":Ljava/lang/String;
    const-string v2, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6263
    const-string v2, "state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6264
    .local v1, "state":I
    if-ne v1, v5, :cond_1

    .line 6265
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v5, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayConnected:Z

    .line 6269
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v3, "wfd_UIBC_rot"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayUIBCRotation:I

    .line 6271
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(Z)V

    .line 6273
    .end local v1    # "state":I
    :cond_0
    return-void

    .line 6267
    .restart local v1    # "state":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$28;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWifiDisplayConnected:Z

    goto :goto_0
.end method
