.class public abstract Landroid/hardware/IRemoteIrService$Stub;
.super Landroid/os/Binder;
.source "IRemoteIrService.java"

# interfaces
.implements Landroid/hardware/IRemoteIrService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/IRemoteIrService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IRemoteIrService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.IRemoteIrService"

.field static final TRANSACTION_cancelTransmit:I = 0x5

.field static final TRANSACTION_change_fw_mode:I = 0x10

.field static final TRANSACTION_getCarrierFrequencies:I = 0x11

.field static final TRANSACTION_getMode:I = 0xc

.field static final TRANSACTION_getValue:I = 0xe

.field static final TRANSACTION_hasIrEmitter:I = 0x1

.field static final TRANSACTION_receive:I = 0xa

.field static final TRANSACTION_receiveData:I = 0x6

.field static final TRANSACTION_receiveData2:I = 0x7

.field static final TRANSACTION_recvInit:I = 0x8

.field static final TRANSACTION_recvIsReady:I = 0x9

.field static final TRANSACTION_setMode:I = 0xb

.field static final TRANSACTION_setResetValue:I = 0xf

.field static final TRANSACTION_setValue:I = 0xd

.field static final TRANSACTION_transmit_raw:I = 0x2

.field static final TRANSACTION_transmit_raw2:I = 0x3

.field static final TRANSACTION_transmit_unit:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.IRemoteIrService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/IRemoteIrService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/IRemoteIrService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.hardware.IRemoteIrService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/IRemoteIrService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/IRemoteIrService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/hardware/IRemoteIrService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/IRemoteIrService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 270
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/hardware/IRemoteIrService$Stub;->hasIrEmitter()Z

    move-result v5

    .line 50
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v5, :cond_0

    move v6, v7

    :goto_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 56
    .end local v5    # "_result":Z
    :sswitch_2
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 62
    .local v1, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 63
    .local v3, "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/hardware/IRemoteIrService$Stub;->transmit_raw(Ljava/lang/String;[BI)I

    move-result v5

    .line 64
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v5    # "_result":I
    :sswitch_3
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 76
    .restart local v1    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/hardware/IRemoteIrService$Stub;->transmit_raw2(Ljava/lang/String;[BI)I

    move-result v5

    .line 78
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v5    # "_result":I
    :sswitch_4
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 90
    .restart local v1    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 92
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 93
    .local v4, "_arg3":I
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/hardware/IRemoteIrService$Stub;->transmit_unit(Ljava/lang/String;[BII)I

    move-result v5

    .line 94
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :sswitch_5
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/IRemoteIrService$Stub;->cancelTransmit(Ljava/lang/String;)I

    move-result v5

    .line 104
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 110
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_6
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .local v2, "_arg1_length":I
    if-gez v2, :cond_1

    .line 116
    const/4 v1, 0x0

    .line 122
    .restart local v1    # "_arg1":[B
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 123
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/hardware/IRemoteIrService$Stub;->receiveData(Ljava/lang/String;[BI)I

    move-result v5

    .line 124
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 119
    .end local v1    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v5    # "_result":I
    :cond_1
    new-array v1, v2, [B

    .restart local v1    # "_arg1":[B
    goto :goto_2

    .line 131
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg1_length":I
    :sswitch_7
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .restart local v2    # "_arg1_length":I
    if-gez v2, :cond_2

    .line 137
    const/4 v1, 0x0

    .line 143
    .restart local v1    # "_arg1":[B
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/hardware/IRemoteIrService$Stub;->receiveData2(Ljava/lang/String;[BI)I

    move-result v5

    .line 145
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 140
    .end local v1    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v5    # "_result":I
    :cond_2
    new-array v1, v2, [B

    .restart local v1    # "_arg1":[B
    goto :goto_3

    .line 152
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg1_length":I
    :sswitch_8
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/IRemoteIrService$Stub;->recvInit(Ljava/lang/String;)I

    move-result v5

    .line 156
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_9
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/IRemoteIrService$Stub;->recvIsReady(Ljava/lang/String;)I

    move-result v5

    .line 166
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 172
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_a
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 177
    .restart local v2    # "_arg1_length":I
    if-gez v2, :cond_3

    .line 178
    const/4 v1, 0x0

    .line 184
    .restart local v1    # "_arg1":[B
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/hardware/IRemoteIrService$Stub;->receive(Ljava/lang/String;[BI)I

    move-result v5

    .line 186
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 181
    .end local v1    # "_arg1":[B
    .end local v3    # "_arg2":I
    .end local v5    # "_result":I
    :cond_3
    new-array v1, v2, [B

    .restart local v1    # "_arg1":[B
    goto :goto_4

    .line 193
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg1_length":I
    :sswitch_b
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 200
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v0, v1, v3}, Landroid/hardware/IRemoteIrService$Stub;->setMode(Ljava/lang/String;II)I

    move-result v5

    .line 201
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v5    # "_result":I
    :sswitch_c
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/IRemoteIrService$Stub;->getMode(Ljava/lang/String;)I

    move-result v5

    .line 211
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 217
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_d
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/IRemoteIrService$Stub;->setValue(Ljava/lang/String;I)I

    move-result v5

    .line 223
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v5    # "_result":I
    :sswitch_e
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hardware/IRemoteIrService$Stub;->getValue(Ljava/lang/String;)I

    move-result v5

    .line 233
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 239
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_f
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 243
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 244
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/IRemoteIrService$Stub;->setResetValue(Ljava/lang/String;I)I

    move-result v5

    .line 245
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 251
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v5    # "_result":I
    :sswitch_10
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 256
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/IRemoteIrService$Stub;->change_fw_mode(Ljava/lang/String;I)I

    move-result v5

    .line 257
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 263
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v5    # "_result":I
    :sswitch_11
    const-string v6, "android.hardware.IRemoteIrService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Landroid/hardware/IRemoteIrService$Stub;->getCarrierFrequencies()[I

    move-result-object v5

    .line 265
    .local v5, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
