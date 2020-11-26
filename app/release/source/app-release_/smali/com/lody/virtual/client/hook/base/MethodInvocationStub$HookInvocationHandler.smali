.class Lcom/lody/virtual/client/hook/base/MethodInvocationStub$HookInvocationHandler;
.super Ljava/lang/Object;
.source "MethodInvocationStub.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/base/MethodInvocationStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HookInvocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;Lcom/lody/virtual/client/hook/base/MethodInvocationStub$1;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub$HookInvocationHandler;-><init>(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 169
    iget-object p1, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->getMethodProxy(Ljava/lang/String;)Lcom/lody/virtual/client/hook/base/MethodProxy;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodProxy;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 171
    :goto_0
    iget-object v3, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    invoke-static {v3}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->access$100(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    move-result-object v3

    sget-object v4, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->NEVER:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    if-ne v3, v4, :cond_2

    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getInvocationLoggingCondition()Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    move-result-object v3

    sget-object v4, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->NEVER:Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 179
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 180
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v4

    :goto_3
    const-string v6, ") => "

    const-string v7, "("

    const-string v8, "."

    const-string v9, "void"

    if-eqz v2, :cond_4

    .line 185
    :try_start_0
    iget-object v10, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    invoke-static {v10}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->access$200(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p1, v10, p2, p3}, Lcom/lody/virtual/client/hook/base/MethodProxy;->beforeCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 186
    iget-object v10, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    invoke-static {v10}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->access$200(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p1, v10, p2, p3}, Lcom/lody/virtual/client/hook/base/MethodProxy;->call(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 187
    iget-object v10, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    invoke-static {v10}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->access$200(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p1, v10, p2, p3, v4}, Lcom/lody/virtual/client/hook/base/MethodProxy;->afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_4

    .line 189
    :cond_4
    iget-object v10, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    invoke-static {v10}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->access$200(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-eqz v3, :cond_7

    .line 202
    iget-object v0, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    invoke-static {v0}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->access$100(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->getLogLevel(ZZ)I

    move-result v0

    if-eqz p1, :cond_5

    .line 204
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getInvocationLoggingCondition()Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->getLogLevel(ZZ)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_5
    if-ltz v0, :cond_7

    .line 210
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_5

    .line 213
    :cond_6
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 216
    :goto_5
    invoke-static {}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object p3

    :catchall_0
    move-exception p3

    .line 195
    :try_start_1
    instance-of v10, p3, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v10, :cond_8

    move-object v10, p3

    check-cast v10, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 196
    move-object v10, p3

    check-cast v10, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v10}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p3

    .line 198
    :cond_8
    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v10

    if-eqz v3, :cond_e

    .line 202
    iget-object v3, p0, Lcom/lody/virtual/client/hook/base/MethodInvocationStub$HookInvocationHandler;->this$0:Lcom/lody/virtual/client/hook/base/MethodInvocationStub;

    invoke-static {v3}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->access$100(Lcom/lody/virtual/client/hook/base/MethodInvocationStub;)Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    move-result-object v3

    if-eqz p3, :cond_9

    const/4 v11, 0x1

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v3, v2, v11}, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->getLogLevel(ZZ)I

    move-result v3

    if-eqz p1, :cond_b

    .line 204
    invoke-virtual {p1}, Lcom/lody/virtual/client/hook/base/MethodProxy;->getInvocationLoggingCondition()Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;

    move-result-object p1

    if-eqz p3, :cond_a

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p1, v2, v0}, Lcom/lody/virtual/client/hook/base/LogInvocation$Condition;->getLogLevel(ZZ)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_b
    if-ltz v3, :cond_e

    if-nez p3, :cond_d

    .line 210
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_8

    .line 213
    :cond_c
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    .line 209
    :cond_d
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 216
    :goto_8
    invoke-static {}, Lcom/lody/virtual/client/hook/base/MethodInvocationStub;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_e
    throw v10
.end method
