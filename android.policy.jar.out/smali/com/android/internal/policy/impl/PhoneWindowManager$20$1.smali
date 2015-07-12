.class Lcom/android/internal/policy/impl/PhoneWindowManager$20$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$20;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$20;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$20;)V
    .locals 0

    .prologue
    .line 5444
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5448
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5449
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$20$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$20;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$20;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mQuickBootLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$3800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5450
    monitor-exit v1

    .line 5451
    return-void

    .line 5450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
