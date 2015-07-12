.class public Lcom/android/server/RemoteIrService;
.super Landroid/hardware/IRemoteIrService$Stub;
.source "RemoteIrService.java"


# static fields
.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final TAG:Ljava/lang/String; = "RemoteIrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHalLock:Ljava/lang/Object;

.field private final mNativeHal:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-direct {p0}, Landroid/hardware/IRemoteIrService$Stub;-><init>()V

    .line 73
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    .line 80
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 83
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "RemoteIrService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/RemoteIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 84
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 86
    invoke-static {}, Lcom/android/server/RemoteIrService;->halOpen()I

    move-result v1

    iput v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    .line 88
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    if-gtz v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No RemoteIR HAL loaded! ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.consumerir"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    if-nez v1, :cond_2

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_1
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    if-eqz v1, :cond_2

    .line 100
    :cond_2
    return-void
.end method

.method private static native halCancelTransmit(I)I
.end method

.method private static native halChangeFWMode(II)I
.end method

.method private static native halCheckReceiveReady(I)I
.end method

.method private static native halGetCarrierFrequencies(I)[I
.end method

.method private static native halGetMode(I)I
.end method

.method private static native halGetValue(I)I
.end method

.method private static native halOpen()I
.end method

.method private static native halReceive(I[BI)I
.end method

.method private static native halReceiveData(I[BI)I
.end method

.method private static native halReceiveData2(I[BI)I
.end method

.method private static native halReceiveInit(I)I
.end method

.method private static native halSetMode(III)I
.end method

.method private static native halSetResetMode(II)I
.end method

.method private static native halSetValue(II)I
.end method

.method private static native halTransmit(I[BI)I
.end method

.method private static native halTransmit2(I[BI)I
.end method

.method private throwIfNoIrEmitter()V
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    if-gtz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelTransmit(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v0, -0x1

    .line 252
    .local v0, "ret":I
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 254
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 255
    :try_start_0
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v1}, Lcom/android/server/RemoteIrService;->halCancelTransmit(I)I

    move-result v0

    .line 256
    if-gez v0, :cond_0

    .line 257
    const-string v1, "RemoteIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error cancelTransmit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    monitor-exit v2

    .line 261
    return v0

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public change_fw_mode(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 472
    const/4 v0, -0x1

    .line 474
    .local v0, "err":I
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 481
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 482
    :try_start_0
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v1, p2}, Lcom/android/server/RemoteIrService;->halChangeFWMode(II)I

    move-result v0

    .line 483
    monitor-exit v2

    .line 485
    return v0

    .line 483
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCarrierFrequencies()[I
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 498
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_0
    iget v0, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v0}, Lcom/android/server/RemoteIrService;->halGetCarrierFrequencies(I)[I

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMode(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 393
    const/4 v0, -0x1

    .line 395
    .local v0, "err":I
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 403
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 404
    :try_start_0
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v1}, Lcom/android/server/RemoteIrService;->halGetMode(I)I

    move-result v0

    .line 405
    monitor-exit v2

    .line 407
    return v0

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getValue(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 433
    const/4 v0, -0x1

    .line 435
    .local v0, "err":I
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 442
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 443
    :try_start_0
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v1}, Lcom/android/server/RemoteIrService;->halGetValue(I)I

    move-result v0

    .line 444
    monitor-exit v2

    .line 446
    return v0

    .line 444
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasIrEmitter()Z
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public receive(Ljava/lang/String;[BI)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I

    .prologue
    .line 343
    const/4 v0, -0x1

    .line 345
    .local v0, "err":I
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 355
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 359
    :try_start_0
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v1, p2, p3}, Lcom/android/server/RemoteIrService;->halReceive(I[BI)I

    move-result v0

    .line 361
    if-gez v0, :cond_1

    .line 362
    const-string v1, "RemoteIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error receiving: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_1
    monitor-exit v2

    .line 366
    return v0

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public receiveData(Ljava/lang/String;[BI)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I

    .prologue
    .line 267
    const/4 v0, -0x1

    .line 269
    .local v0, "ret":I
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 271
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 272
    :try_start_0
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v1, p2, p3}, Lcom/android/server/RemoteIrService;->halReceiveData(I[BI)I

    move-result v0

    .line 273
    if-gez v0, :cond_0

    .line 274
    const-string v1, "RemoteIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error receiveData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    monitor-exit v2

    .line 278
    return v0

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public receiveData2(Ljava/lang/String;[BI)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I

    .prologue
    .line 285
    const/4 v0, -0x1

    .line 287
    .local v0, "ret":I
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 289
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 290
    :try_start_0
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v1, p2, p3}, Lcom/android/server/RemoteIrService;->halReceiveData2(I[BI)I

    move-result v0

    .line 291
    if-gez v0, :cond_0

    .line 292
    const-string v1, "RemoteIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error receiveData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    monitor-exit v2

    .line 296
    return v0

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recvInit(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 303
    const/4 v0, -0x1

    .line 305
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 312
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 313
    :try_start_0
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v1}, Lcom/android/server/RemoteIrService;->halReceiveInit(I)I

    move-result v0

    .line 314
    monitor-exit v2

    .line 316
    return v0

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public recvIsReady(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 323
    const/4 v0, -0x1

    .line 325
    .local v0, "ret":I
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 332
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 333
    :try_start_0
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v1}, Lcom/android/server/RemoteIrService;->halCheckReceiveReady(I)I

    move-result v0

    .line 334
    monitor-exit v2

    .line 336
    return v0

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMode(Ljava/lang/String;II)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "value"    # I

    .prologue
    .line 373
    const/4 v0, -0x1

    .line 375
    .local v0, "err":I
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 380
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 383
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 384
    :try_start_0
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v1, p2, p3}, Lcom/android/server/RemoteIrService;->halSetMode(III)I

    move-result v0

    .line 385
    monitor-exit v2

    .line 387
    return v0

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setResetValue(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 452
    const/4 v0, -0x1

    .line 454
    .local v0, "err":I
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 461
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 462
    :try_start_0
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v1, p2}, Lcom/android/server/RemoteIrService;->halSetResetMode(II)I

    move-result v0

    .line 463
    monitor-exit v2

    .line 465
    return v0

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setValue(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 414
    const/4 v0, -0x1

    .line 416
    .local v0, "err":I
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 423
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 424
    :try_start_0
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v1, p2}, Lcom/android/server/RemoteIrService;->halSetValue(II)I

    move-result v0

    .line 425
    monitor-exit v2

    .line 427
    return v0

    .line 425
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public transmit_raw(Ljava/lang/String;[BI)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I

    .prologue
    .line 117
    const/4 v0, -0x1

    .line 119
    .local v0, "err":I
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 127
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 128
    :try_start_0
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v1, p2, p3}, Lcom/android/server/RemoteIrService;->halTransmit(I[BI)I

    move-result v0

    .line 129
    if-gez v0, :cond_1

    .line 130
    const-string v1, "RemoteIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error transmitting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    monitor-exit v2

    .line 134
    return v0

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public transmit_raw2(Ljava/lang/String;[BI)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I

    .prologue
    .line 140
    const/4 v0, -0x1

    .line 142
    .local v0, "err":I
    iget-object v1, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 150
    iget-object v2, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :try_start_0
    iget v1, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    invoke-static {v1, p2, p3}, Lcom/android/server/RemoteIrService;->halTransmit2(I[BI)I

    move-result v0

    .line 152
    if-gez v0, :cond_1

    .line 153
    const-string v1, "RemoteIrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error transmitting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    monitor-exit v2

    .line 157
    return v0

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public transmit_unit(Ljava/lang/String;[BII)I
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I
    .param p4, "unitsize"    # I

    .prologue
    const/4 v9, 0x4

    .line 164
    const/4 v1, -0x1

    .line 166
    .local v1, "err":I
    iget-object v7, p0, Lcom/android/server/RemoteIrService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.TRANSMIT_IR"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 168
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Requires TRANSMIT_IR permission"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/android/server/RemoteIrService;->throwIfNoIrEmitter()V

    .line 175
    if-ge p4, v9, :cond_1

    .line 176
    const/4 v7, -0x2

    .line 243
    :goto_0
    return v7

    .line 179
    :cond_1
    add-int/lit8 v7, p4, 0x4

    new-array v6, v7, [B

    .line 184
    .local v6, "unitBuf":[B
    iget-object v8, p0, Lcom/android/server/RemoteIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v8

    .line 186
    const/4 v5, 0x0

    .line 187
    .local v5, "srcPos":I
    const/4 v4, 0x0

    .line 189
    .local v4, "pktNo":I
    const/4 v3, 0x0

    .line 191
    .local v3, "num_to_write":I
    :goto_1
    if-lez p3, :cond_5

    .line 194
    if-le p3, p4, :cond_2

    move v3, p4

    .line 197
    :goto_2
    const/4 v7, 0x0

    int-to-byte v9, v4

    :try_start_0
    aput-byte v9, v6, v7

    .line 198
    const/4 v7, 0x1

    add-int/lit8 v9, v3, 0x2

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 201
    const/4 v7, 0x2

    invoke-static {p2, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    move v0, v4

    .line 204
    .local v0, "chksum":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3
    add-int/lit8 v7, v3, 0x2

    if-ge v2, v7, :cond_3

    .line 205
    aget-byte v7, v6, v2

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v0, v7

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "chksum":I
    .end local v2    # "i":I
    :cond_2
    move v3, p3

    .line 194
    goto :goto_2

    .line 208
    .restart local v0    # "chksum":I
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v7, v3, 0x2

    shr-int/lit8 v9, v0, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 209
    add-int/lit8 v7, v3, 0x3

    and-int/lit16 v9, v0, 0xff

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 211
    iget v7, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    add-int/lit8 v9, v3, 0x4

    invoke-static {v7, v6, v9}, Lcom/android/server/RemoteIrService;->halTransmit(I[BI)I

    move-result v1

    .line 212
    if-gez v1, :cond_4

    .line 213
    const-string v7, "RemoteIrService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error transmitting_unit: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_4
    sub-int/2addr p3, v3

    .line 217
    add-int/2addr v5, v3

    .line 218
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 228
    .end local v0    # "chksum":I
    .end local v2    # "i":I
    :cond_5
    if-ne v3, p4, :cond_6

    .line 232
    const/4 v7, 0x0

    int-to-byte v9, v4

    aput-byte v9, v6, v7

    .line 233
    const/4 v7, 0x1

    const/4 v9, 0x2

    aput-byte v9, v6, v7

    .line 234
    const/4 v7, 0x2

    const/4 v9, 0x0

    aput-byte v9, v6, v7

    .line 235
    const/4 v7, 0x3

    add-int/lit8 v9, v4, 0x2

    int-to-byte v9, v9

    aput-byte v9, v6, v7

    .line 238
    iget v7, p0, Lcom/android/server/RemoteIrService;->mNativeHal:I

    const/4 v9, 0x4

    invoke-static {v7, v6, v9}, Lcom/android/server/RemoteIrService;->halTransmit(I[BI)I

    move-result v1

    .line 241
    :cond_6
    monitor-exit v8

    move v7, v1

    .line 243
    goto/16 :goto_0

    .line 241
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
