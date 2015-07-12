.class public Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;
.super Ljava/lang/Object;
.source "CoollifeUIResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CoollifeUIResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeFileInfoOption"
.end annotation


# instance fields
.field public inAssetCookie:I

.field public inRequestStream:Z

.field public inResourcePath:Ljava/lang/String;

.field public outFilterPath:Ljava/lang/String;

.field public outInputStream:Ljava/io/InputStream;

.field public outIsDefaultTheme:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "assetCookie"    # I
    .param p2, "resourcePath"    # Ljava/lang/String;
    .param p3, "requestStream"    # Z

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput p1, p0, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->inAssetCookie:I

    .line 404
    iput-object p2, p0, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 405
    iput-boolean p3, p0, Landroid/content/res/CoollifeUIResources$ThemeFileInfoOption;->inRequestStream:Z

    .line 406
    return-void
.end method
