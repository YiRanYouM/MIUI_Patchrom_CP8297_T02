.class final Lcom/android/internal/policy/impl/PhoneWindowManager$VendettaHandler;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VendettaHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 7677
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$VendettaHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 7678
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 7679
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 7683
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 7694
    :goto_0
    return-void

    .line 7685
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$VendettaHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->checkFaceSmartStay()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4400(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0

    .line 7688
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$VendettaHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->checkFaceSmartStayTimeout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4500(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0

    .line 7691
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$VendettaHandler;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->doFaceSmartStay()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$4600(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_0

    .line 7683
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
