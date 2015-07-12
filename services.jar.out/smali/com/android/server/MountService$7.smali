.class Lcom/android/server/MountService$7;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$volume:Landroid/os/storage/StorageVolume;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;)V
    .locals 0

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$7;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/MountService$7;->val$volume:Landroid/os/storage/StorageVolume;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1221
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$7;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unmounting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1222
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "now the oldstatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    iget-object v4, p0, Lcom/android/server/MountService$7;->val$path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1228
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MountService"

    const-string v2, "Failed to sleep"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1232
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    return-void

    .line 1225
    :cond_0
    :try_start_1
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after sleep 1s the state is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    iget-object v4, p0, Lcom/android/server/MountService$7;->val$path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "==Sending media removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v1, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$7;->val$volume:Landroid/os/storage/StorageVolume;

    const-string v3, "removed"

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1227
    iget-object v1, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    iget-object v3, p0, Lcom/android/server/MountService$7;->val$volume:Landroid/os/storage/StorageVolume;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
