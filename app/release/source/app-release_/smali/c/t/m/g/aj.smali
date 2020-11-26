.class final Lc/t/m/g/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private synthetic a:Lc/t/m/g/ai;


# direct methods
.method constructor <init>(Lc/t/m/g/ai;)V
    .locals 0

    iput-object p1, p0, Lc/t/m/g/aj;->a:Lc/t/m/g/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p1

    iget-object v0, p0, Lc/t/m/g/aj;->a:Lc/t/m/g/ai;

    iget-object v0, v0, Lc/t/m/g/ai;->l:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
