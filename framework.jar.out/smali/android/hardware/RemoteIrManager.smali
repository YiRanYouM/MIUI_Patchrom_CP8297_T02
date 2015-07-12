.class public final Landroid/hardware/RemoteIrManager;
.super Ljava/lang/Object;
.source "RemoteIrManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteIr"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/hardware/IRemoteIrService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "remoteir"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/IRemoteIrService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/IRemoteIrService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    .line 49
    iget-object v0, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v0, :cond_0

    .line 50
    const-string v0, "RemoteIr"

    const-string v1, "RemoteIrManager: no remote ir service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelTransmit()I
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 191
    const/4 v1, -0x1

    .line 192
    .local v1, "ret":I
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    .line 194
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v2}, Landroid/hardware/RemoteIrManager;->transmit([BI)I

    move-result v1

    .line 196
    if-gez v1, :cond_0

    .line 197
    const-string v2, "RemoteIr"

    const-string v3, "failed to cancelTransmit."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    return v1

    .line 192
    nop

    :array_0
    .array-data 1
        0x69t
        0x69t
        -0x6at
        -0x6at
    .end array-data
.end method

.method public changeFWMode(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 447
    const/4 v1, -0x1

    .line 449
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 450
    const-string v3, "RemoteIr"

    const-string v4, "failed to receive; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 462
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 455
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Landroid/hardware/IRemoteIrService;->change_fw_mode(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 460
    :goto_1
    const-string v3, "RemoteIr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteIrManager: changeModeUserIr returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 462
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 456
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to changeFWMode."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getCarrierFrequencies()[Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 509
    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v4, :cond_1

    .line 510
    const-string v4, "RemoteIr"

    const-string/jumbo v5, "no remote ir service."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 528
    :cond_0
    :goto_0
    return-object v2

    .line 515
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    invoke-interface {v4}, Landroid/hardware/IRemoteIrService;->getCarrierFrequencies()[I

    move-result-object v0

    .line 516
    .local v0, "freqs":[I
    array-length v4, v0

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 517
    const-string v4, "RemoteIr"

    const-string/jumbo v5, "remote ir service returned an uneven number of frequencies."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 518
    goto :goto_0

    .line 520
    :cond_2
    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;

    .line 522
    .local v2, "range":[Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 523
    div-int/lit8 v4, v1, 0x2

    new-instance v5, Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;

    aget v6, v0, v1

    add-int/lit8 v7, v1, 0x1

    aget v7, v0, v7

    invoke-direct {v5, p0, v6, v7}, Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;-><init>(Landroid/hardware/RemoteIrManager;II)V

    aput-object v5, v2, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 526
    .end local v0    # "freqs":[I
    .end local v1    # "i":I
    .end local v2    # "range":[Landroid/hardware/RemoteIrManager$CarrierFrequencyRange;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 528
    goto :goto_0
.end method

.method public getGpioValue()I
    .locals 5

    .prologue
    .line 404
    const/4 v1, -0x1

    .line 406
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 407
    const-string v3, "RemoteIr"

    const-string v4, "failed to setGpioMode; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 419
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 412
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/hardware/IRemoteIrService;->getValue(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 419
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 413
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to getGpioValue."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public hasIrEmitter()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v1, :cond_0

    .line 61
    const-string v1, "RemoteIr"

    const-string/jumbo v2, "no remote ir service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_0
    return v0

    .line 66
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    invoke-interface {v1}, Landroid/hardware/IRemoteIrService;->hasIrEmitter()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public receive([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 339
    const/4 v1, -0x1

    .line 341
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 342
    const-string v3, "RemoteIr"

    const-string v4, "failed to receive; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 354
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 347
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1, p2}, Landroid/hardware/IRemoteIrService;->receive(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 352
    :goto_1
    const-string v3, "RemoteIr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteIrManager: receive returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 354
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 348
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to receive."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public receiveData([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 217
    const/4 v1, -0x1

    .line 219
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 220
    const-string v3, "RemoteIr"

    const-string v4, "failed to receiveData; no consumer ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 232
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 225
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1, p2}, Landroid/hardware/IRemoteIrService;->receiveData(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 230
    :goto_1
    const-string v3, "RemoteIr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteIrManager: receiveData returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 232
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 226
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to receiveData."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public receiveData2([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 249
    const/4 v1, -0x1

    .line 251
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 252
    const-string v3, "RemoteIr"

    const-string v4, "failed to receiveData; no consumer ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 264
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 257
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1, p2}, Landroid/hardware/IRemoteIrService;->receiveData2(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 262
    :goto_1
    const-string v3, "RemoteIr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteIrManager: receiveData returned:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 264
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 258
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to receiveData."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public receive_init()I
    .locals 7

    .prologue
    const/4 v3, 0x4

    .line 279
    const/4 v2, -0x1

    .line 280
    .local v2, "ret":I
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    .line 282
    .local v0, "cmd":[B
    invoke-virtual {p0, v0, v3}, Landroid/hardware/RemoteIrManager;->transmit([BI)I

    move-result v2

    .line 284
    if-gez v2, :cond_0

    .line 285
    const-string v3, "RemoteIr"

    const-string v4, "failed to initialize receive."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return v2

    .line 292
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/IRemoteIrService;->setMode(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to setMode."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 280
    :array_0
    .array-data 1
        0x11t
        0x11t
        -0x12t
        -0x12t
    .end array-data
.end method

.method public receive_is_ready()I
    .locals 4

    .prologue
    .line 312
    const/4 v1, -0x1

    .line 314
    .local v1, "ret":I
    iget-object v2, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-eqz v2, :cond_0

    .line 317
    :try_start_0
    iget-object v2, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/hardware/IRemoteIrService;->recvIsReady(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 323
    :cond_0
    :goto_0
    return v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteIr"

    const-string v3, "failed to check receive data is ready."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setGpioMode(II)I
    .locals 5
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    .line 362
    const/4 v1, -0x1

    .line 364
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 365
    const-string v3, "RemoteIr"

    const-string v4, "failed to setGpioMode; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 377
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 370
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1, p2}, Landroid/hardware/IRemoteIrService;->setMode(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 377
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 371
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to setGpioMode."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setGpioValue(I)I
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 383
    const/4 v1, -0x1

    .line 385
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 386
    const-string v3, "RemoteIr"

    const-string v4, "failed to setGpioMode; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 398
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 391
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Landroid/hardware/IRemoteIrService;->setValue(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 398
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 392
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to setGpioMode."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setResetValue(I)I
    .locals 5
    .param p1, "value"    # I

    .prologue
    .line 426
    const/4 v1, -0x1

    .line 428
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 429
    const-string v3, "RemoteIr"

    const-string v4, "failed to setGpioMode; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 441
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 434
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Landroid/hardware/IRemoteIrService;->setResetValue(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 441
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 435
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to setResetValue."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public transmit([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 85
    const/4 v1, -0x1

    .line 89
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 90
    const-string v3, "RemoteIr"

    const-string v4, "failed to transmit; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 100
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 95
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    const/16 v5, 0xfa

    invoke-interface {v3, v4, p1, p2, v5}, Landroid/hardware/IRemoteIrService;->transmit_unit(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 100
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 96
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to transmit."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public write_data([BI)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 115
    const/4 v1, -0x1

    .line 119
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 120
    const-string v3, "RemoteIr"

    const-string v4, "failed to write_data; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 130
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 125
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1, p2}, Landroid/hardware/IRemoteIrService;->transmit_raw(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 130
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 126
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to write_data."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public write_data2([BI)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "size"    # I

    .prologue
    .line 146
    const/4 v1, -0x1

    .line 150
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 151
    const-string v3, "RemoteIr"

    const-string v4, "failed to write_data; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 161
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 156
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1, p2}, Landroid/hardware/IRemoteIrService;->transmit_raw2(Ljava/lang/String;[BI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 161
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 157
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to write_data."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public write_unit([BII)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "size"    # I
    .param p3, "unitsize"    # I

    .prologue
    .line 170
    const/4 v1, -0x1

    .line 174
    .local v1, "ret":I
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    if-nez v3, :cond_0

    .line 175
    const-string v3, "RemoteIr"

    const-string v4, "failed to write_unit; no remote ir service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 185
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 180
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/RemoteIrManager;->mService:Landroid/hardware/IRemoteIrService;

    iget-object v4, p0, Landroid/hardware/RemoteIrManager;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/hardware/IRemoteIrService;->transmit_unit(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 185
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 181
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteIr"

    const-string v4, "failed to write_unit."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
