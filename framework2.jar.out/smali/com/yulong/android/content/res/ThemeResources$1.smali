.class Lcom/yulong/android/content/res/ThemeResources$1;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yulong/android/content/res/ThemeResources;->initFilterInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentFilterInfo:Lcom/yulong/android/content/res/ThemeResources$FilterInfo;

.field final synthetic this$0:Lcom/yulong/android/content/res/ThemeResources;


# direct methods
.method constructor <init>(Lcom/yulong/android/content/res/ThemeResources;)V
    .locals 1

    .prologue
    .line 299
    iput-object p1, p0, Lcom/yulong/android/content/res/ThemeResources$1;->this$0:Lcom/yulong/android/content/res/ThemeResources;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yulong/android/content/res/ThemeResources$1;->mCurrentFilterInfo:Lcom/yulong/android/content/res/ThemeResources$FilterInfo;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "filter"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yulong/android/content/res/ThemeResources$1;->mCurrentFilterInfo:Lcom/yulong/android/content/res/ThemeResources$FilterInfo;

    .line 335
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 307
    const-string v2, "filter"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    const-string v2, "path"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v2, "res"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    :cond_0
    const-string v2, "ThemeResources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "theme invaild filer: path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 315
    .restart local v1    # "path":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;-><init>(Ljava/lang/String;Ljava/util/HashSet;)V

    iput-object v2, p0, Lcom/yulong/android/content/res/ThemeResources$1;->mCurrentFilterInfo:Lcom/yulong/android/content/res/ThemeResources$FilterInfo;

    .line 316
    iget-object v2, p0, Lcom/yulong/android/content/res/ThemeResources$1;->this$0:Lcom/yulong/android/content/res/ThemeResources;

    # getter for: Lcom/yulong/android/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/yulong/android/content/res/ThemeResources;->access$000(Lcom/yulong/android/content/res/ThemeResources;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/yulong/android/content/res/ThemeResources$1;->mCurrentFilterInfo:Lcom/yulong/android/content/res/ThemeResources$FilterInfo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    .end local v1    # "path":Ljava/lang/String;
    :cond_3
    const-string v2, "package"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/yulong/android/content/res/ThemeResources$1;->mCurrentFilterInfo:Lcom/yulong/android/content/res/ThemeResources$FilterInfo;

    if-eqz v2, :cond_1

    .line 319
    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/yulong/android/content/res/ThemeResources$1;->mCurrentFilterInfo:Lcom/yulong/android/content/res/ThemeResources$FilterInfo;

    iget-object v2, v2, Lcom/yulong/android/content/res/ThemeResources$FilterInfo;->mPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
