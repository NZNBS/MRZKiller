.class Lcom/lody/virtual/client/hook/providers/QueryRedirectCursor;
.super Landroid/database/CrossProcessCursorWrapper;
.source "QueryRedirectCursor.java"


# instance fields
.field private dataIndex:I


# direct methods
.method constructor <init>(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 24
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/lody/virtual/client/hook/providers/QueryRedirectCursor;->dataIndex:I

    return-void
.end method


# virtual methods
.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 3

    if-ltz p1, :cond_2

    .line 29
    iget v0, p0, Lcom/lody/virtual/client/hook/providers/QueryRedirectCursor;->dataIndex:I

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lody/virtual/client/hook/providers/QueryRedirectCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 36
    invoke-super {p0, p1, p2}, Landroid/database/CrossProcessCursorWrapper;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    return-void

    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 41
    array-length v0, p1

    iget-object v1, p2, Landroid/database/CharArrayBuffer;->data:[C

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 42
    iget-object v1, p2, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iput v0, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    return-void

    .line 30
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/database/CrossProcessCursorWrapper;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/database/CrossProcessCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_1

    .line 49
    iget v1, p0, Lcom/lody/virtual/client/hook/providers/QueryRedirectCursor;->dataIndex:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v0}, Lcom/lody/virtual/client/NativeEngine;->getEscapePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method
